; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_propbag.c_fill_props.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_propbag.c_fill_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@fill_props.nameW = internal constant [5 x i8] c"name\00", align 1
@fill_props.paramW = internal constant [6 x i8] c"param\00", align 1
@fill_props.valueW = internal constant [6 x i8] c"value\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fill_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_props(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32 @nsAString_InitDepend(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @fill_props.paramW, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @nsIDOMHTMLElement_GetElementsByTagName(i32* %19, i32* %8, i32** %10)
  store i32 %20, i32* %15, align 4
  %21 = call i32 @nsAString_Finish(i32* %8)
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @NS_FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @E_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %100

27:                                               ; preds = %2
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @nsIDOMHTMLCollection_GetLength(i32* %28, i64* %12)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @NS_FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %33, %27
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %93, %34
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @nsIDOMHTMLCollection_Item(i32* %40, i64 %41, i32** %14)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @NS_FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @E_FAIL, align 4
  store i32 %47, i32* %16, align 4
  br label %96

48:                                               ; preds = %39
  %49 = load i32*, i32** %14, align 8
  %50 = bitcast i32** %11 to i8**
  %51 = call i32 @nsIDOMNode_QueryInterface(i32* %49, i32* @IID_nsIDOMHTMLElement, i8** %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @nsIDOMNode_Release(i32* %52)
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @NS_FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @E_FAIL, align 4
  store i32 %58, i32* %16, align 4
  br label %96

59:                                               ; preds = %48
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @get_elem_attr_value(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_props.nameW, i64 0, i64 0), i32* %8, i8** %6)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @NS_SUCCEEDED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @get_elem_attr_value(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @fill_props.valueW, i64 0, i64 0), i32* %9, i8** %7)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @NS_SUCCEEDED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @add_prop(i32* %72, i8* %73, i8* %74)
  store i32 %75, i32* %16, align 4
  %76 = call i32 @nsAString_Finish(i32* %9)
  br label %77

77:                                               ; preds = %71, %65
  %78 = call i32 @nsAString_Finish(i32* %8)
  br label %79

79:                                               ; preds = %77, %59
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @nsIDOMHTMLElement_Release(i32* %80)
  %82 = load i32, i32* %16, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %96

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @NS_FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @E_FAIL, align 4
  store i32 %91, i32* %16, align 4
  br label %96

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %35

96:                                               ; preds = %90, %85, %57, %46, %35
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @nsIDOMHTMLCollection_Release(i32* %97)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %25
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #1

declare dso_local i32 @nsIDOMHTMLElement_GetElementsByTagName(i32*, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsIDOMHTMLCollection_GetLength(i32*, i64*) #1

declare dso_local i32 @nsIDOMHTMLCollection_Item(i32*, i64, i32**) #1

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @get_elem_attr_value(i32*, i8*, i32*, i8**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @add_prop(i32*, i8*, i8*) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @nsIDOMHTMLCollection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
