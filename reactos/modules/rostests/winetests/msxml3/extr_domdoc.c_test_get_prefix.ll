; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_prefix.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"a:elem\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"expected prefix \22a\22\0A\00", align 1
@get_prefix_doc = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_prefix() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %9, i32** %5, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @IXMLDOMDocument_get_prefix(i32* %10, i32** %8)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** @S_FALSE, align 8
  %14 = call i32 @EXPECT_HR(i32* %12, i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @IXMLDOMDocument_get_prefix(i32* %20, i32** null)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** @E_INVALIDARG, align 8
  %24 = call i32 @EXPECT_HR(i32* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @IXMLDOMDocument_createCDATASection(i32* %25, i32* null, i32** %2)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** @S_OK, align 8
  %29 = icmp eq i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32* @IXMLDOMCDATASection_get_prefix(i32* %33, i32** %8)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** @S_FALSE, align 8
  %37 = icmp eq i32* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32* @IXMLDOMCDATASection_get_prefix(i32* %46, i32** null)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** @E_INVALIDARG, align 8
  %50 = icmp eq i32* %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @IXMLDOMCDATASection_Release(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32* @IXMLDOMDocument_createComment(i32* %56, i32* null, i32** %4)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** @S_OK, align 8
  %60 = icmp eq i32* %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %62)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32* @IXMLDOMComment_get_prefix(i32* %64, i32** %8)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** @S_FALSE, align 8
  %68 = icmp eq i32* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* @IXMLDOMComment_get_prefix(i32* %77, i32** null)
  store i32* %78, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** @E_INVALIDARG, align 8
  %81 = icmp eq i32* %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @IXMLDOMComment_Release(i32* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @IXMLDOMDocument_createDocumentFragment(i32* %87, i32** %1)
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** @S_OK, align 8
  %91 = icmp eq i32* %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %93)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %95 = load i32*, i32** %1, align 8
  %96 = call i32* @IXMLDOMDocumentFragment_get_prefix(i32* %95, i32** %8)
  store i32* %96, i32** %7, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** @S_FALSE, align 8
  %99 = icmp eq i32* %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %101)
  %103 = load i32*, i32** %8, align 8
  %104 = icmp eq i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32* @IXMLDOMDocumentFragment_get_prefix(i32* %108, i32** null)
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** @E_INVALIDARG, align 8
  %112 = icmp eq i32* %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @IXMLDOMDocumentFragment_Release(i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @_bstr_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %120 = call i32* @IXMLDOMDocument_createElement(i32* %118, i32 %119, i32** %3)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** @S_OK, align 8
  %123 = icmp eq i32* %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32* @IXMLDOMElement_get_prefix(i32* %127, i32** null)
  store i32* %128, i32** %7, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** @E_INVALIDARG, align 8
  %131 = icmp eq i32* %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %133)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %135 = load i32*, i32** %3, align 8
  %136 = call i32* @IXMLDOMElement_get_prefix(i32* %135, i32** %8)
  store i32* %136, i32** %7, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** @S_FALSE, align 8
  %139 = icmp eq i32* %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %141)
  %143 = load i32*, i32** %8, align 8
  %144 = icmp eq i32* %143, null
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %146)
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @IXMLDOMElement_Release(i32* %148)
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @_bstr_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %152 = call i32* @IXMLDOMDocument_createElement(i32* %150, i32 %151, i32** %3)
  store i32* %152, i32** %7, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** @S_OK, align 8
  %155 = icmp eq i32* %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %157)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %159 = load i32*, i32** %3, align 8
  %160 = call i32* @IXMLDOMElement_get_prefix(i32* %159, i32** %8)
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32*, i32** @S_OK, align 8
  %163 = icmp eq i32* %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %165)
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i64 @lstrcmpW(i32* %167, i32 %168)
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @SysFreeString(i32* %173)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %175 = load i32*, i32** %3, align 8
  %176 = call i32* @IXMLDOMElement_get_namespaceURI(i32* %175, i32** %8)
  store i32* %176, i32** %7, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = load i32*, i32** @S_FALSE, align 8
  %179 = icmp eq i32* %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %181)
  %183 = load i32*, i32** %8, align 8
  %184 = icmp eq i32* %183, null
  %185 = zext i1 %184 to i32
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %186)
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @IXMLDOMElement_Release(i32* %188)
  %190 = load i32*, i32** %5, align 8
  %191 = load i8*, i8** @get_prefix_doc, align 8
  %192 = call i32 @_bstr_(i8* %191)
  %193 = call i32* @IXMLDOMDocument_loadXML(i32* %190, i32 %192, i32* %6)
  store i32* %193, i32** %7, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** @S_OK, align 8
  %196 = call i32 @EXPECT_HR(i32* %194, i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = call i32* @IXMLDOMDocument_get_documentElement(i32* %197, i32** %3)
  store i32* %198, i32** %7, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = load i32*, i32** @S_OK, align 8
  %201 = call i32 @EXPECT_HR(i32* %199, i32* %200)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %202 = load i32*, i32** %3, align 8
  %203 = call i32* @IXMLDOMElement_get_prefix(i32* %202, i32** %8)
  store i32* %203, i32** %7, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32*, i32** @S_FALSE, align 8
  %206 = call i32 @EXPECT_HR(i32* %204, i32* %205)
  %207 = load i32*, i32** %8, align 8
  %208 = icmp eq i32* %207, null
  %209 = zext i1 %208 to i32
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %210)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %212 = load i32*, i32** %3, align 8
  %213 = call i32* @IXMLDOMElement_get_namespaceURI(i32* %212, i32** %8)
  store i32* %213, i32** %7, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = load i32*, i32** @S_FALSE, align 8
  %216 = call i32 @EXPECT_HR(i32* %214, i32* %215)
  %217 = load i32*, i32** %8, align 8
  %218 = icmp eq i32* %217, null
  %219 = zext i1 %218 to i32
  %220 = load i32*, i32** %8, align 8
  %221 = call i32* @wine_dbgstr_w(i32* %220)
  %222 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %221)
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @IXMLDOMDocument_Release(i32* %223)
  %225 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32* @IXMLDOMDocument_get_prefix(i32*, i32**) #1

declare dso_local i32 @EXPECT_HR(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @IXMLDOMDocument_createCDATASection(i32*, i32*, i32**) #1

declare dso_local i32* @IXMLDOMCDATASection_get_prefix(i32*, i32**) #1

declare dso_local i32 @IXMLDOMCDATASection_Release(i32*) #1

declare dso_local i32* @IXMLDOMDocument_createComment(i32*, i32*, i32**) #1

declare dso_local i32* @IXMLDOMComment_get_prefix(i32*, i32**) #1

declare dso_local i32 @IXMLDOMComment_Release(i32*) #1

declare dso_local i32* @IXMLDOMDocument_createDocumentFragment(i32*, i32**) #1

declare dso_local i32* @IXMLDOMDocumentFragment_get_prefix(i32*, i32**) #1

declare dso_local i32 @IXMLDOMDocumentFragment_Release(i32*) #1

declare dso_local i32* @IXMLDOMDocument_createElement(i32*, i32, i32**) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32* @IXMLDOMElement_get_prefix(i32*, i32**) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i64 @lstrcmpW(i32*, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @IXMLDOMElement_get_namespaceURI(i32*, i32**) #1

declare dso_local i32* @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32* @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i32* @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
