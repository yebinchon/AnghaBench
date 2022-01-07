; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_compartmentmgr.c_CompartmentMgr_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_compartmentmgr.c_CompartmentMgr_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i32* }

@E_POINTER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CompartmentMgrVtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompartmentMgr_Constructor(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load i32**, i32*** %7, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_POINTER, align 4
  store i32 %13, i32* %4, align 4
  br label %68

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @IsEqualIID(i32 %18, i32* @IID_IUnknown)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %17, %14
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %26 = call %struct.TYPE_5__* @HeapAlloc(i32 %24, i32 %25, i32 24)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* @CompartmentMgrVtbl, i32** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @list_init(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_6__* %45 to i32*
  %47 = load i32**, i32*** %7, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %31
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32**, i32*** %7, align 8
  %57 = bitcast i32** %56 to i8**
  %58 = call i32 @ITfCompartmentMgr_QueryInterface(%struct.TYPE_6__* %54, i32 %55, i8** %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, %struct.TYPE_5__* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %43, %29, %21, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @ITfCompartmentMgr_QueryInterface(%struct.TYPE_6__*, i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
