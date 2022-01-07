; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mstask/extr_task.c_TaskConstructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mstask/extr_task.c_TaskConstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"(%s, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MSTASK_ITaskVtbl = common dso_local global i32 0, align 4
@MSTASK_IPersistFileVtbl = common dso_local global i32 0, align 4
@dll_ref = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TaskConstructor(i32 %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @debugstr_w(i32 %8)
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.TYPE_9__** %10)
  %12 = call i32 (...) @GetProcessHeap()
  %13 = call i8* @HeapAlloc(i32 %12, i32 0, i32 64)
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32* @MSTASK_ITaskVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32* @MSTASK_IPersistFileVtbl, i32** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @lstrlenW(i32 %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @HeapAlloc(i32 %34, i32 0, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %19
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @HeapFree(i32 %44, i32 0, %struct.TYPE_8__* %45)
  %47 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %19
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @lstrcpyW(i8* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 259200000, i32* %63, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %66, align 8
  %67 = call i32 @InterlockedIncrement(i32* @dll_ref)
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %48, %43, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @lstrcpyW(i8*, i32) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
