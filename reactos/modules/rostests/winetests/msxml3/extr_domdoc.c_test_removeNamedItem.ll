; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_removeNamedItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_removeNamedItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@complete4A = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"loadXML failed\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"length %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@szvr = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_removeNamedItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_removeNamedItem() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @complete4A, align 4
  %15 = call i32 @_bstr_(i32 %14)
  %16 = call i32 @IXMLDOMDocument_loadXML(i32* %13, i32 %15, i64* %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @VARIANT_TRUE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @IXMLDOMDocument_get_documentElement(i32* %27, i32** %2)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @IXMLDOMElement_get_childNodes(i32* %35, i32** %6)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @IXMLDOMNodeList_get_item(i32* %43, i32 1, i8** %3)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @IXMLDOMNode_get_attributes(i8* %51, i32** %7)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @IXMLDOMNamedNodeMap_get_length(i32* %59, i32* %10)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 3
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32* %72, i32* null, i8** %4)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @E_INVALIDARG, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** %4, align 8
  %81 = icmp eq i8* %80, inttoptr (i64 3735928559 to i8*)
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %85 = load i32, i32* @szvr, align 4
  %86 = call i32* @SysAllocString(i32 %85)
  store i32* %86, i32** %9, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32* %87, i32* %88, i8** %4)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32* %96, i32* %97, i8** %5)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @S_FALSE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %5, align 8
  %106 = icmp eq i8* %105, null
  %107 = zext i1 %106 to i32
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @IXMLDOMNamedNodeMap_get_length(i32* %110, i32* %10)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @S_OK, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @IXMLDOMNamedNodeMap_setNamedItem(i32* %123, i8* %124, i32* null)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @IXMLDOMNode_Release(i8* %132)
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @IXMLDOMNamedNodeMap_get_length(i32* %134, i32* %10)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @S_OK, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 3
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32* %147, i32* %148, i8** null)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @S_OK, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %11, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @IXMLDOMNamedNodeMap_get_length(i32* %156, i32* %10)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @S_OK, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %7, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32* %169, i32* %170, i8** null)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @S_FALSE, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @SysFreeString(i32* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %180)
  %182 = load i8*, i8** %3, align 8
  %183 = call i32 @IXMLDOMNode_Release(i8* %182)
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @IXMLDOMNodeList_Release(i32* %184)
  %186 = load i32*, i32** %2, align 8
  %187 = call i32 @IXMLDOMElement_Release(i32* %186)
  %188 = load i32*, i32** %1, align 8
  %189 = call i32 @IXMLDOMDocument_Release(i32* %188)
  %190 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i32 @IXMLDOMElement_get_childNodes(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNodeList_get_item(i32*, i32, i8**) #1

declare dso_local i32 @IXMLDOMNode_get_attributes(i8*, i32**) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_get_length(i32*, i32*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_removeNamedItem(i32*, i32*, i8**) #1

declare dso_local i32* @SysAllocString(i32) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_setNamedItem(i32*, i8*, i32*) #1

declare dso_local i32 @IXMLDOMNode_Release(i8*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
