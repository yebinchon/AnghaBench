; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getAttributeNode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getAttributeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@szExampleXML = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@nonexistent_fileW = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@nonexistent_attrW = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"foo:b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getAttributeNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getAttributeNode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i8*, i8** @szExampleXML, align 8
  %10 = call i32 @_bstr_(i8* %9)
  %11 = call i32 @IXMLDOMDocument_loadXML(i32* %8, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @S_OK, align 4
  %14 = call i32 @EXPECT_HR(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @IXMLDOMDocument_get_documentElement(i32* %15, i32** %3)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = call i32 @EXPECT_HR(i32 %17, i32 %18)
  %20 = load i32, i32* @nonexistent_fileW, align 4
  %21 = call i32 @SysAllocString(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @IXMLDOMElement_getAttributeNode(i32* %22, i32 %23, i32** null)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @E_FAIL, align 4
  %27 = call i32 @EXPECT_HR(i32 %25, i32 %26)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @IXMLDOMElement_getAttributeNode(i32* %28, i32 %29, i32** %1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @E_FAIL, align 4
  %33 = call i32 @EXPECT_HR(i32 %31, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @SysFreeString(i32 %39)
  %41 = load i32, i32* @nonexistent_attrW, align 4
  %42 = call i32 @SysAllocString(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @IXMLDOMElement_getAttributeNode(i32* %43, i32 %44, i32** null)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @S_FALSE, align 4
  %48 = call i32 @EXPECT_HR(i32 %46, i32 %47)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @IXMLDOMElement_getAttributeNode(i32* %49, i32 %50, i32** %1)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @S_FALSE, align 4
  %54 = call i32 @EXPECT_HR(i32 %52, i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @SysFreeString(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @IXMLDOMElement_getAttributeNode(i32* %62, i32 %63, i32** %1)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @S_OK, align 4
  %67 = call i32 @EXPECT_HR(i32 %65, i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @IXMLDOMAttribute_Release(i32* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @IXMLDOMElement_getAttributeNode(i32* %70, i32 %71, i32** %1)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @S_FALSE, align 4
  %75 = call i32 @EXPECT_HR(i32 %73, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @IXMLDOMElement_getAttributeNode(i32* %76, i32 %77, i32** %1)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @S_OK, align 4
  %81 = call i32 @EXPECT_HR(i32 %79, i32 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @IXMLDOMAttribute_Release(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @IXMLDOMElement_Release(i32* %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @IXMLDOMDocument_Release(i32* %86)
  %88 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i32 @SysAllocString(i32) #1

declare dso_local i32 @IXMLDOMElement_getAttributeNode(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMAttribute_Release(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
