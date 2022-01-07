; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_namespaces_basic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_namespaces_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_namespaces_basic.namespaces_xmlA = internal constant [191 x i8] c"<?xml version=\221.0\22?>\0A<XMI xmi.version=\221.1\22 xmlns:Model=\22http://omg.org/mof.Model/1.3\22>  <XMI.content>    <Model:Package name=\22WinePackage\22 Model:name2=\22name2 attr\22 />  </XMI.content></XMI>\00", align 16
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"//XMI.content\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Model:Package\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"http://omg.org/mof.Model/1.3\00", align 1
@IID_IXMLDOMElement = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Model:name2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_namespaces_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_namespaces_basic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @_bstr_(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @test_namespaces_basic.namespaces_xmlA, i64 0, i64 0))
  %12 = call i64 @IXMLDOMDocument_loadXML(i32* %10, i32 %11, i64* %4)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = call i32 @EXPECT_HR(i64 %13, i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @VARIANT_TRUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %6, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @IXMLDOMDocument_get_namespaceURI(i32* %22, i32** %6)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @S_FALSE, align 8
  %26 = call i32 @EXPECT_HR(i64 %24, i64 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %6, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @_bstr_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i64 @IXMLDOMDocument_selectSingleNode(i32* %33, i32 %34, i32** %3)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = call i32 @EXPECT_HR(i64 %36, i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %169

42:                                               ; preds = %0
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @IXMLDOMNode_get_firstChild(i32* %43, i32** %8)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = call i32 @EXPECT_HR(i64 %45, i64 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %8, align 8
  %52 = ptrtoint i32* %51 to i64
  %53 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @IXMLDOMNode_get_prefix(i32* %54, i32** null)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @E_INVALIDARG, align 8
  %58 = call i32 @EXPECT_HR(i64 %56, i64 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @IXMLDOMNode_get_prefix(i32* %59, i32** %6)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = call i32 @EXPECT_HR(i64 %61, i64 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @lstrcmpW(i32* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* @wine_dbgstr_w(i32* %70)
  %72 = ptrtoint i32* %71 to i64
  %73 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @SysFreeString(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i64 @IXMLDOMNode_get_nodeName(i32* %76, i32** %6)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = call i32 @EXPECT_HR(i64 %78, i64 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @_bstr_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @lstrcmpW(i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %6, align 8
  %88 = call i32* @wine_dbgstr_w(i32* %87)
  %89 = ptrtoint i32* %88 to i64
  %90 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @SysFreeString(i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 @IXMLDOMNode_get_namespaceURI(i32* %93, i32** null)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @E_INVALIDARG, align 8
  %97 = call i32 @EXPECT_HR(i64 %95, i64 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @IXMLDOMNode_get_namespaceURI(i32* %98, i32** %6)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = call i32 @EXPECT_HR(i64 %100, i64 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @_bstr_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %105 = call i32 @lstrcmpW(i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %6, align 8
  %110 = call i32* @wine_dbgstr_w(i32* %109)
  %111 = ptrtoint i32* %110 to i64
  %112 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @SysFreeString(i32* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = bitcast i32** %2 to i8**
  %117 = call i64 @IXMLDOMNode_QueryInterface(i32* %115, i32* @IID_IXMLDOMElement, i8** %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = call i32 @EXPECT_HR(i64 %118, i64 %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %123 = call i64 @IXMLDOMElement_getAttributeNode(i32* %121, i32 %122, i32** %7)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = call i32 @EXPECT_HR(i64 %124, i64 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @IXMLDOMAttribute_get_nodeName(i32* %127, i32** %6)
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @S_OK, align 8
  %131 = call i32 @EXPECT_HR(i64 %129, i64 %130)
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %134 = call i32 @lstrcmpW(i32* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load i32*, i32** %6, align 8
  %139 = call i32* @wine_dbgstr_w(i32* %138)
  %140 = ptrtoint i32* %139 to i64
  %141 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @SysFreeString(i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = call i64 @IXMLDOMAttribute_get_prefix(i32* %144, i32** %6)
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = call i32 @EXPECT_HR(i64 %146, i64 %147)
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %151 = call i32 @lstrcmpW(i32* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i32*, i32** %6, align 8
  %156 = call i32* @wine_dbgstr_w(i32* %155)
  %157 = ptrtoint i32* %156 to i64
  %158 = call i32 @ok(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @SysFreeString(i32* %159)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @IXMLDOMAttribute_Release(i32* %161)
  %163 = load i32*, i32** %2, align 8
  %164 = call i32 @IXMLDOMElement_Release(i32* %163)
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @IXMLDOMNode_Release(i32* %165)
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @IXMLDOMNode_Release(i32* %167)
  br label %169

169:                                              ; preds = %42, %0
  %170 = load i32*, i32** %1, align 8
  %171 = call i32 @IXMLDOMDocument_Release(i32* %170)
  %172 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i64, i64) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXMLDOMDocument_get_namespaceURI(i32*, i32**) #1

declare dso_local i64 @IXMLDOMDocument_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_firstChild(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_prefix(i32*, i32**) #1

declare dso_local i32 @lstrcmpW(i32*, i32) #1

declare dso_local i32* @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @IXMLDOMNode_get_nodeName(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_namespaceURI(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IXMLDOMElement_getAttributeNode(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMAttribute_get_nodeName(i32*, i32**) #1

declare dso_local i64 @IXMLDOMAttribute_get_prefix(i32*, i32**) #1

declare dso_local i32 @IXMLDOMAttribute_Release(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
