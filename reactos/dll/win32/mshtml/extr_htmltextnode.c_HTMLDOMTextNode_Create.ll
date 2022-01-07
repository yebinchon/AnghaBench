; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmltextnode.c_HTMLDOMTextNode_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmltextnode.c_HTMLDOMTextNode_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__, i64, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDOMTextNodeImplVtbl = common dso_local global i32 0, align 4
@HTMLDOMTextNodeVtbl = common dso_local global i32 0, align 4
@HTMLDOMTextNode2Vtbl = common dso_local global i32 0, align 4
@HTMLDOMTextNode_dispex = common dso_local global i32 0, align 4
@IID_nsIDOMText = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLDOMTextNode_Create(i32* %0, i32* %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  %10 = call %struct.TYPE_12__* @heap_alloc_zero(i32 48)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store i32* @HTMLDOMTextNodeImplVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32* @HTMLDOMTextNodeVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32* @HTMLDOMTextNode2Vtbl, i32** %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_11__* %30 to i32*
  %32 = call i32 @init_dispex(i32* %28, i32* %31, i32* @HTMLDOMTextNode_dispex)
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @HTMLDOMNode_Init(i32* %33, %struct.TYPE_13__* %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = bitcast i64* %40 to i8**
  %42 = call i64 @nsIDOMNode_QueryInterface(i32* %38, i32* @IID_nsIDOMText, i8** %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @NS_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %15
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %50, %54
  br label %56

56:                                               ; preds = %46, %15
  %57 = phi i1 [ false, %15 ], [ %55, %46 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @nsIDOMNode_Release(i32* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %67, align 8
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %56, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_12__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

declare dso_local i32 @HTMLDOMNode_Init(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
