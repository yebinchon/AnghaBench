; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, %struct.TYPE_7__*, i64, i64, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i8* }

@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @BlockChainStream_Construct(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call %struct.TYPE_8__* @HeapAlloc(i32 %9, i32 0, i32 64)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %69

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %35, i8** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = call i32 @BlockChainStream_UpdateIndexCache(%struct.TYPE_8__* %54)
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %14
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @HeapFree(i32 %59, i32 0, %struct.TYPE_8__* %62)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_8__* %65)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %69

67:                                               ; preds = %14
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %4, align 8
  br label %69

69:                                               ; preds = %67, %58, %13
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %70
}

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @BlockChainStream_UpdateIndexCache(%struct.TYPE_8__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
