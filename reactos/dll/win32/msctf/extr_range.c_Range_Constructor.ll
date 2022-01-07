; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_range.c_Range_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_range.c_Range_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i8*, i8*, i8*, i32*, i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(%p) %p %p\0A\00", align 1
@Range_RangeVtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Range_Constructor(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_6__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__**, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_6__** %5, %struct.TYPE_6__*** %13, align 8
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = call %struct.TYPE_5__* @HeapAlloc(i32 %15, i32 %16, i32 56)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %14, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %7, align 4
  br label %54

22:                                               ; preds = %6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %23, i32* %24, i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32* @Range_RangeVtbl, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %51)
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %22, %20
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
