; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_parseerror.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_parseerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@CLSID_DOMDocument60 = common dso_local global i32 0, align 4
@IID_IXMLDOMParseError2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parseerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parseerror() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @IXMLDOMDocument_get_parseError(i32* %6, i32** %2)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @S_OK, align 4
  %10 = call i32 @EXPECT_HR(i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @IXMLDOMParseError_get_line(i32* %11, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @E_INVALIDARG, align 4
  %15 = call i32 @EXPECT_HR(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @IXMLDOMParseError_get_srcText(i32* %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @E_INVALIDARG, align 4
  %20 = call i32 @EXPECT_HR(i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @IXMLDOMParseError_get_linepos(i32* %21, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @E_INVALIDARG, align 4
  %25 = call i32 @EXPECT_HR(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @IXMLDOMParseError_Release(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @IXMLDOMDocument_Release(i32* %28)
  %30 = call i32 @is_clsid_supported(i32* @CLSID_DOMDocument60, i32* @IID_IXMLDOMDocument)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %0
  br label %52

33:                                               ; preds = %0
  %34 = call i32* @create_document_version(i32 60, i32* @IID_IXMLDOMDocument)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @IXMLDOMDocument_get_parseError(i32* %35, i32** %2)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = call i32 @EXPECT_HR(i32 %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = bitcast i32** %1 to i8**
  %42 = call i32 @IXMLDOMParseError_QueryInterface(i32* %40, i32* @IID_IXMLDOMParseError2, i8** %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = call i32 @EXPECT_HR(i32 %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @IXMLDOMParseError2_Release(i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @IXMLDOMParseError_Release(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @IXMLDOMDocument_Release(i32* %50)
  br label %52

52:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @IXMLDOMDocument_get_parseError(i32*, i32**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IXMLDOMParseError_get_line(i32*, i32*) #1

declare dso_local i32 @IXMLDOMParseError_get_srcText(i32*, i32*) #1

declare dso_local i32 @IXMLDOMParseError_get_linepos(i32*, i32*) #1

declare dso_local i32 @IXMLDOMParseError_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @is_clsid_supported(i32*, i32*) #1

declare dso_local i32* @create_document_version(i32, i32*) #1

declare dso_local i32 @IXMLDOMParseError_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMParseError2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
