; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_ownerDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_ownerDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_get_ownerDocument.nodeXML = private unnamed_addr constant [131 x i8] c"<root id='0'>   <!-- comment node 0 -->   text node 0   <x attr='val'></x>   <?foo value='PI for x'?>   <![CDATA[ cdata ]]></root>\00", align 16
@CLSID_DOMDocument2 = common dso_local global i32 0, align 4
@IID_IXMLDOMDocument2 = common dso_local global i32 0, align 4
@CLSID_XMLSchemaCache = common dso_local global i32 0, align 4
@IID_IXMLDOMSchemaCollection = common dso_local global i32 0, align 4
@complete4A = common dso_local global i8* null, align 8
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"got %p, doc %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"got %p, expected %p. original %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"got %p, (%p, %p, %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@IID_IXMLDOMElement = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"attr == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_ownerDocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_ownerDocument() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [131 x i8], align 16
  %17 = bitcast [131 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([131 x i8], [131 x i8]* @__const.test_get_ownerDocument.nodeXML, i32 0, i32 0), i64 131, i1 false)
  %18 = call i32 @is_clsid_supported(i32* @CLSID_DOMDocument2, i32* @IID_IXMLDOMDocument2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  br label %230

21:                                               ; preds = %0
  %22 = call i32 @is_clsid_supported(i32* @CLSID_XMLSchemaCache, i32* @IID_IXMLDOMSchemaCollection)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %230

25:                                               ; preds = %21
  %26 = call i32* @create_document(i32* @IID_IXMLDOMDocument2)
  store i32* %26, i32** %4, align 8
  %27 = call i32* @create_cache(i32* @IID_IXMLDOMSchemaCollection)
  store i32* %27, i32** %7, align 8
  %28 = call i32 @VariantInit(i32* %9)
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** @complete4A, align 8
  %31 = call i32 @_bstr_(i8* %30)
  %32 = call i32 @IXMLDOMDocument2_loadXML(i32* %29, i32 %31, i64* %8)
  %33 = call i32 @ole_check(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @VARIANT_TRUE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @check_default_props(i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @set_props(i32* %41, i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @check_set_props(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @IXMLDOMDocument2_get_firstChild(i32* %46, i32** %6)
  %48 = call i32 @ole_check(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @IXMLDOMNode_get_ownerDocument(i32* %49, i32** %1)
  %51 = call i32 @ole_check(i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = bitcast i32** %5 to i8**
  %54 = call i32 @IXMLDOMDocument_QueryInterface(i32* %52, i32* @IID_IXMLDOMDocument2, i8** %53)
  %55 = call i32 @ole_check(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %60, i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @check_set_props(i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @IXMLDOMDocument2_Release(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @IXMLDOMNode_get_ownerDocument(i32* %67, i32** %2)
  %69 = call i32 @ole_check(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @IXMLDOMNode_Release(i32* %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = icmp ne i32* %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32*, i32** %2, align 8
  %77 = load i32*, i32** %1, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %76, i32* %77, i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** @complete4A, align 8
  %82 = call i32 @_bstr_(i8* %81)
  %83 = call i32 @IXMLDOMDocument2_loadXML(i32* %80, i32 %82, i64* %8)
  %84 = call i32 @ole_check(i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @VARIANT_TRUE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @check_set_props(i32* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @IXMLDOMDocument2_get_firstChild(i32* %92, i32** %6)
  %94 = call i32 @ole_check(i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @IXMLDOMNode_get_ownerDocument(i32* %95, i32** %3)
  %97 = call i32 @ole_check(i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @IXMLDOMNode_Release(i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = bitcast i32** %5 to i8**
  %102 = call i32 @IXMLDOMDocument_QueryInterface(i32* %100, i32* @IID_IXMLDOMDocument2, i8** %101)
  %103 = call i32 @ole_check(i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %1, align 8
  %106 = icmp ne i32* %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %25
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp ne i32* %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = icmp ne i32* %112, %113
  br label %115

115:                                              ; preds = %111, %107, %25
  %116 = phi i1 [ false, %107 ], [ false, %25 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = load i32*, i32** %3, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %118, i32* %119, i32* %120, i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @check_set_props(i32* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @unset_props(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @check_default_props(i32* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @check_default_props(i32* %129)
  %131 = load i32*, i32** %1, align 8
  %132 = getelementptr inbounds [131 x i8], [131 x i8]* %16, i64 0, i64 0
  %133 = call i32 @_bstr_(i8* %132)
  %134 = call i32 @IXMLDOMDocument_loadXML(i32* %131, i32 %133, i64* %8)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @S_OK, align 4
  %137 = call i32 @EXPECT_HR(i32 %135, i32 %136)
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @VARIANT_TRUE, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @IXMLDOMDocument_get_documentElement(i32* %143, i32** %10)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @S_OK, align 4
  %147 = call i32 @EXPECT_HR(i32 %145, i32 %146)
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @IXMLDOMElement_get_childNodes(i32* %148, i32** %11)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @S_OK, align 4
  %152 = call i32 @EXPECT_HR(i32 %150, i32 %151)
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @IXMLDOMNodeList_get_length(i32* %153, i64* %14)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @S_OK, align 4
  %157 = call i32 @EXPECT_HR(i32 %155, i32 %156)
  store i64 0, i64* %13, align 8
  br label %158

158:                                              ; preds = %177, %115
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load i32*, i32** %11, align 8
  %164 = load i64, i64* %13, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @IXMLDOMNodeList_get_item(i32* %163, i32 %165, i32** %6)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @S_OK, align 4
  %169 = call i32 @EXPECT_HR(i32 %167, i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @IXMLDOMNode_get_ownerDocument(i32* %170, i32** null)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @E_INVALIDARG, align 4
  %174 = call i32 @EXPECT_HR(i32 %172, i32 %173)
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @IXMLDOMNode_Release(i32* %175)
  br label %177

177:                                              ; preds = %162
  %178 = load i64, i64* %13, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %13, align 8
  br label %158

180:                                              ; preds = %158
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @IXMLDOMElement_Release(i32* %181)
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @IXMLDOMNodeList_get_item(i32* %183, i32 2, i32** %6)
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @S_OK, align 4
  %187 = call i32 @EXPECT_HR(i32 %185, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = bitcast i32** %10 to i8**
  %190 = call i32 @IXMLDOMNode_QueryInterface(i32* %188, i32* @IID_IXMLDOMElement, i8** %189)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @S_OK, align 4
  %193 = call i32 @EXPECT_HR(i32 %191, i32 %192)
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @IXMLDOMNode_Release(i32* %194)
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @_bstr_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %198 = call i32 @IXMLDOMElement_getAttributeNode(i32* %196, i32 %197, i32** %12)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* @S_OK, align 4
  %201 = call i32 @EXPECT_HR(i32 %199, i32 %200)
  %202 = load i32*, i32** %12, align 8
  %203 = icmp ne i32* %202, null
  %204 = zext i1 %203 to i32
  %205 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @IXMLDOMElement_Release(i32* %206)
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @IXMLDOMAttribute_get_ownerDocument(i32* %208, i32* null)
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @E_INVALIDARG, align 4
  %212 = call i32 @EXPECT_HR(i32 %210, i32 %211)
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @IXMLDOMAttribute_Release(i32* %213)
  %215 = load i32*, i32** %11, align 8
  %216 = call i32 @IXMLDOMNodeList_Release(i32* %215)
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @IXMLDOMSchemaCollection_Release(i32* %217)
  %219 = load i32*, i32** %1, align 8
  %220 = call i32 @IXMLDOMDocument_Release(i32* %219)
  %221 = load i32*, i32** %2, align 8
  %222 = call i32 @IXMLDOMDocument_Release(i32* %221)
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 @IXMLDOMDocument_Release(i32* %223)
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 @IXMLDOMDocument2_Release(i32* %225)
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @IXMLDOMDocument2_Release(i32* %227)
  %229 = call i32 (...) @free_bstrs()
  br label %230

230:                                              ; preds = %180, %24, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_clsid_supported(i32*, i32*) #2

declare dso_local i32* @create_document(i32*) #2

declare dso_local i32* @create_cache(i32*) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i32 @ole_check(i32) #2

declare dso_local i32 @IXMLDOMDocument2_loadXML(i32*, i32, i64*) #2

declare dso_local i32 @_bstr_(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @check_default_props(i32*) #2

declare dso_local i32 @set_props(i32*, i32*) #2

declare dso_local i32 @check_set_props(i32*) #2

declare dso_local i32 @IXMLDOMDocument2_get_firstChild(i32*, i32**) #2

declare dso_local i32 @IXMLDOMNode_get_ownerDocument(i32*, i32**) #2

declare dso_local i32 @IXMLDOMDocument_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IXMLDOMDocument2_Release(i32*) #2

declare dso_local i32 @IXMLDOMNode_Release(i32*) #2

declare dso_local i32 @unset_props(i32*) #2

declare dso_local i32 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #2

declare dso_local i32 @EXPECT_HR(i32, i32) #2

declare dso_local i32 @IXMLDOMDocument_get_documentElement(i32*, i32**) #2

declare dso_local i32 @IXMLDOMElement_get_childNodes(i32*, i32**) #2

declare dso_local i32 @IXMLDOMNodeList_get_length(i32*, i64*) #2

declare dso_local i32 @IXMLDOMNodeList_get_item(i32*, i32, i32**) #2

declare dso_local i32 @IXMLDOMElement_Release(i32*) #2

declare dso_local i32 @IXMLDOMNode_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IXMLDOMElement_getAttributeNode(i32*, i32, i32**) #2

declare dso_local i32 @IXMLDOMAttribute_get_ownerDocument(i32*, i32*) #2

declare dso_local i32 @IXMLDOMAttribute_Release(i32*) #2

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #2

declare dso_local i32 @IXMLDOMSchemaCollection_Release(i32*) #2

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #2

declare dso_local i32 @free_bstrs(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
