; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getQualifiedItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getQualifiedItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@complete4A = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"length %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@default_ns_doc = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@IID_IXMLDOMElement = common dso_local global i32 0, align 4
@qualified_item_tests = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"%s, %s: got 0x%08x, expected 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s, %s: got %p\0A\00", align 1
@named_item_tests = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: got 0x%08x, expected 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s: got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getQualifiedItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getQualifiedItem() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** @complete4A, align 8
  %14 = call i32* @_bstr_(i8* %13)
  %15 = call i32 @IXMLDOMDocument_loadXML(i32* %12, i32* %14, i64* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = call i32 @EXPECT_HR(i32 %16, i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @VARIANT_TRUE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @IXMLDOMDocument_get_documentElement(i32* %24, i32** %5)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = call i32 @EXPECT_HR(i32 %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @IXMLDOMElement_get_childNodes(i32* %29, i32** %3)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = call i32 @EXPECT_HR(i32 %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @IXMLDOMNodeList_get_item(i32* %34, i32 1, i8** %1)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = call i32 @EXPECT_HR(i32 %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @IXMLDOMNodeList_Release(i32* %39)
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 @IXMLDOMNode_get_attributes(i8* %41, i32** %4)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = call i32 @EXPECT_HR(i32 %43, i32 %44)
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @IXMLDOMNode_Release(i8* %46)
  store i32 0, i32* %10, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @IXMLDOMNamedNodeMap_get_length(i32* %48, i32* %10)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = call i32 @EXPECT_HR(i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32* %58, i32* null, i32* null, i8** null)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @E_INVALIDARG, align 4
  %62 = call i32 @EXPECT_HR(i32 %60, i32 %61)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32* %63, i32* null, i32* null, i8** %2)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @E_INVALIDARG, align 4
  %67 = call i32 @EXPECT_HR(i32 %65, i32 %66)
  %68 = load i8*, i8** %2, align 8
  %69 = icmp eq i8* %68, inttoptr (i64 3735928559 to i8*)
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32* %73, i32* %74, i32* null, i8** null)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @E_INVALIDARG, align 4
  %78 = call i32 @EXPECT_HR(i32 %76, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32* %79, i32* %80, i32* null, i8** %2)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = call i32 @EXPECT_HR(i32 %82, i32 %83)
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @IXMLDOMNode_Release(i8* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @IXMLDOMElement_Release(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load i8*, i8** @default_ns_doc, align 8
  %93 = call i32* @_bstr_(i8* %92)
  %94 = call i32 @IXMLDOMDocument_loadXML(i32* %91, i32* %93, i64* %8)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @S_OK, align 4
  %97 = call i32 @EXPECT_HR(i32 %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32* @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %100 = call i32 @IXMLDOMDocument_selectSingleNode(i32* %98, i32* %99, i8** %2)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = call i32 @EXPECT_HR(i32 %101, i32 %102)
  %104 = load i8*, i8** %2, align 8
  %105 = bitcast i32** %5 to i8**
  %106 = call i32 @IXMLDOMNode_QueryInterface(i8* %104, i32* @IID_IXMLDOMElement, i8** %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = call i32 @EXPECT_HR(i32 %107, i32 %108)
  %110 = load i8*, i8** %2, align 8
  %111 = call i32 @IXMLDOMNode_Release(i8* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @IXMLDOMElement_get_attributes(i32* %112, i32** %4)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @S_OK, align 4
  %116 = call i32 @EXPECT_HR(i32 %114, i32 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qualified_item_tests, align 8
  store %struct.TYPE_4__* %117, %struct.TYPE_4__** %6, align 8
  br label %118

118:                                              ; preds = %169, %0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %172

123:                                              ; preds = %118
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32* @_bstr_(i8* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32* @_bstr_(i8* %131)
  %133 = call i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32* %124, i32* %128, i32* %132, i8** %2)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %134, %137
  %139 = zext i1 %138 to i32
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %142, i8* %145, i32 %146, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @S_OK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %123
  %155 = load i8*, i8** %2, align 8
  %156 = call i32 @IXMLDOMNode_Release(i8* %155)
  br label %169

157:                                              ; preds = %123
  %158 = load i8*, i8** %2, align 8
  %159 = icmp eq i8* %158, null
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %2, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %163, i8* %166, i8* %167)
  br label %169

169:                                              ; preds = %157, %154
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 1
  store %struct.TYPE_4__* %171, %struct.TYPE_4__** %6, align 8
  br label %118

172:                                              ; preds = %118
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @named_item_tests, align 8
  store %struct.TYPE_4__* %173, %struct.TYPE_4__** %6, align 8
  br label %174

174:                                              ; preds = %215, %172
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %218

179:                                              ; preds = %174
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32* @_bstr_(i8* %183)
  %185 = call i32 @IXMLDOMNamedNodeMap_getNamedItem(i32* %180, i32* %184, i8** %2)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %186, %189
  %191 = zext i1 %190 to i32
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %194, i32 %195, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @S_OK, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %179
  %204 = load i8*, i8** %2, align 8
  %205 = call i32 @IXMLDOMNode_Release(i8* %204)
  br label %215

206:                                              ; preds = %179
  %207 = load i8*, i8** %2, align 8
  %208 = icmp eq i8* %207, null
  %209 = zext i1 %208 to i32
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** %2, align 8
  %214 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %212, i8* %213)
  br label %215

215:                                              ; preds = %206, %203
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 1
  store %struct.TYPE_4__* %217, %struct.TYPE_4__** %6, align 8
  br label %174

218:                                              ; preds = %174
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @IXMLDOMNamedNodeMap_Release(i32* %219)
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @IXMLDOMElement_Release(i32* %221)
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @IXMLDOMDocument_Release(i32* %223)
  %225 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @IXMLDOMDocument_loadXML(i32*, i32*, i64*) #1

declare dso_local i32* @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i32 @IXMLDOMElement_get_childNodes(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNodeList_get_item(i32*, i32, i8**) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

declare dso_local i32 @IXMLDOMNode_get_attributes(i8*, i32**) #1

declare dso_local i32 @IXMLDOMNode_Release(i8*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_get_length(i32*, i32*) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_getQualifiedItem(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_Release(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_selectSingleNode(i32*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMNode_QueryInterface(i8*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMElement_get_attributes(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNamedNodeMap_getNamedItem(i32*, i32*, i8**) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
