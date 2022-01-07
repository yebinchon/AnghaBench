; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_create_document_fragment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_create_document_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDocumentFragmentImplVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_12__**)* @create_document_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_document_fragment(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = call %struct.TYPE_12__* @alloc_doc_node(i32 %12, %struct.TYPE_13__* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = call i32 @IHTMLWindow2_AddRef(i32* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @HTMLDOMNode_Init(%struct.TYPE_12__* %28, %struct.TYPE_14__* %30, i32* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i32* @HTMLDocumentFragmentImplVtbl, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %43, align 8
  %44 = load i32, i32* @S_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_12__* @alloc_doc_node(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @IHTMLWindow2_AddRef(i32*) #1

declare dso_local i32 @HTMLDOMNode_Init(%struct.TYPE_12__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
