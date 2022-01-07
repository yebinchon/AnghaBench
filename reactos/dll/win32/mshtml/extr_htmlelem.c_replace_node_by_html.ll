; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_replace_node_by_html.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_replace_node_by_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CreateRange failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"CreateContextualFragment failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ReplaceChild failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GetParentNode failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replace_node_by_html(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @nsIDOMHTMLDocument_CreateRange(i32* %16, i32** %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @NS_FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @E_FAIL, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @nsAString_InitDepend(i32* %11, i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @nsIDOMRange_CreateContextualFragment(i32* %28, i32* %11, i32** %8)
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @nsIDOMRange_Release(i32* %30)
  %32 = call i32 @nsAString_Finish(i32* %11)
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @NS_FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @E_FAIL, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %25
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @nsIDOMNode_GetParentNode(i32* %41, i32** %9)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @NS_SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @nsIDOMNode_ReplaceChild(i32* %50, i32* %51, i32* %52, i32** %14)
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @nsIDOMNode_Release(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @NS_FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @E_FAIL, align 4
  store i32 %62, i32* %13, align 4
  br label %70

63:                                               ; preds = %49
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @nsIDOMNode_Release(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %59
  br label %75

71:                                               ; preds = %46, %40
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @E_FAIL, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @nsIDOMDocumentFragment_Release(i32* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %36, %21
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @nsIDOMHTMLDocument_CreateRange(i32*, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i32*) #1

declare dso_local i32 @nsIDOMRange_CreateContextualFragment(i32*, i32*, i32**) #1

declare dso_local i32 @nsIDOMRange_Release(i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMNode_GetParentNode(i32*, i32**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIDOMNode_ReplaceChild(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @nsIDOMDocumentFragment_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
