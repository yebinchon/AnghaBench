; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_create_collection_from_nodelist.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_create_collection_from_nodelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_collection_from_nodelist(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @nsIDOMNodeList_GetLength(i32* %11, i64* %5)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i32* @heap_alloc(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %59, %19
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @nsIDOMNodeList_Item(i32* %32, i64 %33, i32** %10)
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @is_elem_node(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @get_node(i32* %39, i32* %40, i32 %41, i32** %7)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %59

47:                                               ; preds = %38
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @elem_from_HTMLDOMNode(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %31
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @nsIDOMNode_Release(i32* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %27

62:                                               ; preds = %27
  %63 = call i32 @elem_vector_normalize(%struct.TYPE_3__* %8)
  br label %66

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32* @HTMLElementCollection_Create(i32* %68, i64 %70)
  ret i32* %71
}

declare dso_local i32 @nsIDOMNodeList_GetLength(i32*, i64*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @nsIDOMNodeList_Item(i32*, i64, i32**) #1

declare dso_local i64 @is_elem_node(i32*) #1

declare dso_local i32 @get_node(i32*, i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @elem_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @elem_vector_normalize(%struct.TYPE_3__*) #1

declare dso_local i32* @HTMLElementCollection_Create(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
