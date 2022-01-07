; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_script_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_script_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@get_script_guid.languageW = internal constant [9 x i8] c"language\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"GetType failed: %08x\0A\00", align 1
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @get_script_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_script_guid(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = call i32 @nsAString_Init(i32* %10, i32* null)
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @nsIDOMHTMLScriptElement_GetType(i32* %16, i32* %10)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @NS_SUCCEEDED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = call i32 @nsAString_GetData(i32* %10, i8** %13)
  %23 = load i8*, i8** %13, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @get_guid_from_type(i8* %27, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = call i32 @nsAString_Finish(i32* %10)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %3
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32*, i32** %6, align 8
  %38 = bitcast i32** %8 to i8**
  %39 = call i64 @nsIDOMHTMLScriptElement_QueryInterface(i32* %37, i32* @IID_nsIDOMHTMLElement, i8** %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @NS_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @get_elem_attr_value(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_script_guid.languageW, i64 0, i64 0), i32* %10, i8** %9)
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @nsIDOMHTMLElement_Release(i32* %47)
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @NS_SUCCEEDED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @get_guid_from_language(i8* %57, i32* %58)
  store i32 %59, i32* %11, align 4
  br label %65

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @get_default_script_guid(i32* %61)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = call i32 @nsAString_Finish(i32* %10)
  br label %67

67:                                               ; preds = %65, %36
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i64 @nsIDOMHTMLScriptElement_GetType(i32*, i32*) #1

declare dso_local i64 @NS_SUCCEEDED(i64) #1

declare dso_local i32 @nsAString_GetData(i32*, i8**) #1

declare dso_local i32 @get_guid_from_type(i8*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @nsIDOMHTMLScriptElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_elem_attr_value(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i32 @get_guid_from_language(i8*, i32*) #1

declare dso_local i32 @get_default_script_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
