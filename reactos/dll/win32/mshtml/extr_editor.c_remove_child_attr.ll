; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_remove_child_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_remove_child_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELEMENT_NODE = common dso_local global i32 0, align 4
@IID_nsIDOMElement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @remove_child_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_child_attr(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @nsIDOMElement_HasChildNodes(i32* %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %71

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @nsIDOMElement_GetChildNodes(i32* %22, i32** %11)
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @nsIDOMNodeList_GetLength(i32* %24, i64* %8)
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %65, %21
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load i32*, i32** %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @nsIDOMNodeList_Item(i32* %31, i64 %32, i32** %10)
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @nsIDOMNode_GetNodeType(i32* %34, i32* %12)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @ELEMENT_NODE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  %40 = load i32*, i32** %10, align 8
  %41 = bitcast i32** %13 to i8**
  %42 = call i32 @nsIDOMNode_QueryInterface(i32* %40, i32* @IID_nsIDOMElement, i8** %41)
  %43 = call i32 @nsAString_Init(i32* %14, i32* null)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @nsIDOMElement_GetTagName(i32* %44, i32* %14)
  %46 = call i32 @nsAString_GetData(i32* %14, i32** %15)
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @strcmpiW(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @nsIDOMElement_RemoveAttribute(i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %39
  %56 = call i32 @nsAString_Finish(i32* %14)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %6, align 8
  call void @remove_child_attr(i32* %57, i32 %58, i32* %59)
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @nsIDOMElement_Release(i32* %60)
  br label %62

62:                                               ; preds = %55, %30
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @nsIDOMNode_Release(i32* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %26

68:                                               ; preds = %26
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @nsIDOMNodeList_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %20
  ret void
}

declare dso_local i32 @nsIDOMElement_HasChildNodes(i32*, i32*) #1

declare dso_local i32 @nsIDOMElement_GetChildNodes(i32*, i32**) #1

declare dso_local i32 @nsIDOMNodeList_GetLength(i32*, i64*) #1

declare dso_local i32 @nsIDOMNodeList_Item(i32*, i64, i32**) #1

declare dso_local i32 @nsIDOMNode_GetNodeType(i32*, i32*) #1

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMElement_GetTagName(i32*, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @nsIDOMElement_RemoveAttribute(i32*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMElement_Release(i32*) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @nsIDOMNodeList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
