; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlattr.c_HTMLDOMAttribute_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlattr.c_HTMLDOMAttribute_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDOMAttributeVtbl = common dso_local global i32 0, align 4
@HTMLDOMAttribute2Vtbl = common dso_local global i32 0, align 4
@HTMLDOMAttribute_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLDOMAttribute_Create(i32* %0, %struct.TYPE_13__* %1, i32 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %13 = call %struct.TYPE_14__* @heap_alloc_zero(i32 56)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %11, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %86

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32* @HTMLDOMAttributeVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32* @HTMLDOMAttribute2Vtbl, i32** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_16__* %36 to i32*
  %38 = call i32 @init_dispex(i32* %34, i32* %37, i32* @HTMLDOMAttribute_dispex)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %18
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = call i32 @HTMLElement_get_attr_col(i32* %43, %struct.TYPE_15__** %10)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = call i32 @IHTMLDOMAttribute_Release(%struct.TYPE_16__* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = call i32 @IHTMLAttributeCollection_Release(i32* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %53, %18
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @heap_strdupW(i32* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = call i32 @IHTMLDOMAttribute_Release(%struct.TYPE_16__* %78)
  %80 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %80, i32* %5, align 4
  br label %86

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %84 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %84, align 8
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %76, %48, %16
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_14__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

declare dso_local i32 @HTMLElement_get_attr_col(i32*, %struct.TYPE_15__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IHTMLDOMAttribute_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @IHTMLAttributeCollection_Release(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @heap_strdupW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
