; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_getAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@szExampleXML = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"xmlns:foo\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"vt = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"urn:uuid:86B2F87F-ACB6-45cd-8B77-9BDB92A01A29\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"wrong attr value: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"attr a\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"foo:b\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"attr b\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"non-existent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getAttribute() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i8*, i8** @szExampleXML, align 8
  %9 = call i32 @_bstr_(i8* %8)
  %10 = call i32 @IXMLDOMDocument_loadXML(i32* %7, i32 %9, i32* %3)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = call i32 @EXPECT_HR(i32 %11, i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @IXMLDOMDocument_get_documentElement(i32* %14, i32** %2)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = call i32 @EXPECT_HR(i32 %16, i32 %17)
  %19 = call i32 @VariantInit(i32* %4)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @_bstr_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @IXMLDOMElement_getAttribute(i32* %20, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = call i32 @EXPECT_HR(i32 %23, i32 %24)
  %26 = call i64 @V_VT(i32* %4)
  %27 = load i64, i64* @VT_BSTR, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @V_VT(i32* %4)
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = call i32 @V_BSTR(i32* %4)
  %33 = call i32 @_bstr_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @lstrcmpW(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @V_BSTR(i32* %4)
  %39 = call i64 @wine_dbgstr_w(i32 %38)
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = call i32 @VariantClear(i32* %4)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @IXMLDOMElement_getAttribute(i32* %42, i32 %43, i32* %4)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = call i32 @EXPECT_HR(i32 %45, i32 %46)
  %48 = call i64 @V_VT(i32* %4)
  %49 = load i64, i64* @VT_BSTR, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @V_VT(i32* %4)
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = call i32 @V_BSTR(i32* %4)
  %55 = call i32 @_bstr_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @lstrcmpW(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @V_BSTR(i32* %4)
  %61 = call i64 @wine_dbgstr_w(i32 %60)
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  %63 = call i32 @VariantClear(i32* %4)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %66 = call i32 @IXMLDOMElement_getAttribute(i32* %64, i32 %65, i32* %4)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = call i32 @EXPECT_HR(i32 %67, i32 %68)
  %70 = call i64 @V_VT(i32* %4)
  %71 = load i64, i64* @VT_BSTR, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @V_VT(i32* %4)
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = call i32 @V_BSTR(i32* %4)
  %77 = call i32 @_bstr_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 @lstrcmpW(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @V_BSTR(i32* %4)
  %83 = call i64 @wine_dbgstr_w(i32 %82)
  %84 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = call i32 @VariantClear(i32* %4)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @_bstr_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %88 = call i32 @IXMLDOMElement_getAttribute(i32* %86, i32 %87, i32* %4)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @S_FALSE, align 4
  %91 = call i32 @EXPECT_HR(i32 %89, i32 %90)
  %92 = call i64 @V_VT(i32* %4)
  %93 = load i64, i64* @VT_NULL, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @V_VT(i32* %4)
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = call i32 @VariantClear(i32* %4)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @_bstr_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %101 = call i32 @IXMLDOMElement_getAttribute(i32* %99, i32 %100, i32* %4)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @S_FALSE, align 4
  %104 = call i32 @EXPECT_HR(i32 %102, i32 %103)
  %105 = call i64 @V_VT(i32* %4)
  %106 = load i64, i64* @VT_NULL, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @V_VT(i32* %4)
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = call i32 @VariantClear(i32* %4)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @IXMLDOMElement_Release(i32* %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @IXMLDOMDocument_Release(i32* %114)
  %116 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IXMLDOMElement_getAttribute(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
