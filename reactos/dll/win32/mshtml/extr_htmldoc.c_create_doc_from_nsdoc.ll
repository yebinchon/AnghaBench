; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_create_doc_from_nsdoc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_create_doc_from_nsdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_18__, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDocumentNodeImplVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_doc_from_nsdoc(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2, %struct.TYPE_25__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_25__**, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %9, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %13 = call %struct.TYPE_25__* @alloc_doc_node(%struct.TYPE_24__* %11, %struct.TYPE_23__* %12)
  store %struct.TYPE_25__* %13, %struct.TYPE_25__** %10, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %15 = icmp ne %struct.TYPE_25__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %69

18:                                               ; preds = %4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24, %18
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  store i32* %37, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %24
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @HTMLDOMNode_Init(%struct.TYPE_25__* %43, %struct.TYPE_18__* %45, i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @nsIDOMHTMLDocument_AddRef(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %54 = call i32 @init_document_mutation(%struct.TYPE_25__* %53)
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = call i32 @doc_init_events(%struct.TYPE_25__* %55)
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  store i32* @HTMLDocumentNodeImplVtbl, i32** %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %65, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %67 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %67, align 8
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %42, %16
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_25__* @alloc_doc_node(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @HTMLDOMNode_Init(%struct.TYPE_25__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @nsIDOMHTMLDocument_AddRef(i32*) #1

declare dso_local i32 @init_document_mutation(%struct.TYPE_25__*) #1

declare dso_local i32 @doc_init_events(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
