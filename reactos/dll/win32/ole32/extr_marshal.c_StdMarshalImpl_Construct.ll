; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_StdMarshalImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_StdMarshalImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i8*, i32, i64 }
%struct.TYPE_6__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@StdMarshalVtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @StdMarshalImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StdMarshalImpl_Construct(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = call i32 (...) @GetProcessHeap()
  %13 = call %struct.TYPE_5__* @HeapAlloc(i32 %12, i32 0, i32 32)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32* @StdMarshalVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = load i8**, i8*** %9, align 8
  %34 = call i32 @IMarshal_QueryInterface(%struct.TYPE_6__* %31, i32 %32, i8** %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = call i32 @HeapFree(i32 %39, i32 0, %struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IMarshal_QueryInterface(%struct.TYPE_6__*, i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
