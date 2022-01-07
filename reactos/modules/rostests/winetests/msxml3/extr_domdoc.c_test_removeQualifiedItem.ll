; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_removeQualifiedItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_removeQualifiedItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@complete4A = common dso_local global i8* null, align 8
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"loadXML failed\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"length %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"vr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_removeQualifiedItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_removeQualifiedItem() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i8*, i8** @complete4A, align 8
  %13 = call i32* @_bstr_(i8* %12)
  %14 = call i8* @IXMLDOMDocument_loadXML(i32* %11, i32* %13, i64* %7)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** @S_OK, align 8
  %17 = icmp eq i8* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @VARIANT_TRUE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i8* @IXMLDOMDocument_get_documentElement(i32* %25, i32** %2)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** @S_OK, align 8
  %29 = icmp eq i8* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i8* @IXMLDOMElement_get_childNodes(i32* %33, i32** %5)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** @S_OK, align 8
  %37 = icmp eq i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i8* @IXMLDOMNodeList_get_item(i32* %41, i32 1, i8** %3)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** @S_OK, align 8
  %45 = icmp eq i8* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @IXMLDOMNodeList_Release(i32* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @IXMLDOMNode_get_attributes(i8* %51, i32** %6)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** @S_OK, align 8
  %55 = icmp eq i8* %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @IXMLDOMNode_Release(i8* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @IXMLDOMNamedNodeMap_get_length(i32* %61, i32* %8)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** @S_OK, align 8
  %65 = icmp eq i8* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 3
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32* %74, i32* null, i32* null, i8** null)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** @E_INVALIDARG, align 8
  %78 = icmp eq i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32* %82, i32* null, i32* null, i8** %4)
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** @E_INVALIDARG, align 8
  %86 = icmp eq i8* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %4, align 8
  %91 = icmp eq i8* %90, inttoptr (i64 3735928559 to i8*)
  %92 = zext i1 %91 to i32
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %97 = call i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32* %95, i32* %96, i32* null, i8** null)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** @S_OK, align 8
  %100 = icmp eq i8* %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32* %104, i32* %105, i32* null, i8** null)
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** @S_FALSE, align 8
  %109 = icmp eq i8* %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %115 = call i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32* %113, i32* %114, i32* null, i8** %4)
  store i8* %115, i8** %9, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** @S_OK, align 8
  %118 = icmp eq i8* %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @IXMLDOMNode_Release(i8* %122)
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %124)
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @IXMLDOMElement_Release(i32* %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @IXMLDOMDocument_Release(i32* %128)
  %130 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i8* @IXMLDOMDocument_loadXML(i32*, i32*, i64*) #1

declare dso_local i32* @_bstr_(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i8* @IXMLDOMElement_get_childNodes(i32*, i32**) #1

declare dso_local i8* @IXMLDOMNodeList_get_item(i32*, i32, i8**) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

declare dso_local i8* @IXMLDOMNode_get_attributes(i8*, i32**) #1

declare dso_local i32 @IXMLDOMNode_Release(i8*) #1

declare dso_local i8* @IXMLDOMNamedNodeMap_get_length(i32*, i32*) #1

declare dso_local i8* @IXMLDOMNamedNodeMap_removeQualifiedItem(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
