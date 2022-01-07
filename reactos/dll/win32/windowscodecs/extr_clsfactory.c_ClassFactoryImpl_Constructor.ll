; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_clsfactory.c_ClassFactoryImpl_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_clsfactory.c_ClassFactoryImpl_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ClassFactoryImpl_Vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**)* @ClassFactoryImpl_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClassFactoryImpl_Constructor(i32* %0, i32 %1, i32** %2) #0 {
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
  store i32* null, i32** %10, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = call %struct.TYPE_5__* @HeapAlloc(i32 %11, i32 0, i32 24)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* @ClassFactoryImpl_Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32**, i32*** %7, align 8
  %30 = call i32 @IClassFactory_QueryInterface(%struct.TYPE_6__* %27, i32 %28, i32** %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i32 @IClassFactory_Release(%struct.TYPE_6__* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IClassFactory_QueryInterface(%struct.TYPE_6__*, i32, i32**) #1

declare dso_local i32 @IClassFactory_Release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
