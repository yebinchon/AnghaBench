; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_xsltext.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_xsltext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@xsltext_xsl = common dso_local global i8* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"<testkey/>\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"testdata\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"transform result %s\0A\00", align 1
@omitxmldecl_xsl = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@omitxmldecl_doc = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"<node>item1</node><node>item2</node>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_xsltext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_xsltext() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %6, i32** %1, align 8
  %7 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i8*, i8** @xsltext_xsl, align 8
  %10 = call i32 @_bstr_(i8* %9)
  %11 = call i64 @IXMLDOMDocument_loadXML(i32* %8, i32 %10, i32* %3)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = call i32 @EXPECT_HR(i64 %12, i64 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @_bstr_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = call i64 @IXMLDOMDocument_loadXML(i32* %15, i32 %16, i32* %3)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = call i32 @EXPECT_HR(i64 %18, i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @IXMLDOMDocument_transformNode(i32* %21, i32* %22, i32* %5)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = call i32 @EXPECT_HR(i64 %24, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @_bstr_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @lstrcmpW(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @wine_dbgstr_w(i32 %33)
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SysFreeString(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i8*, i8** @omitxmldecl_xsl, align 8
  %40 = call i32 @_bstr_(i8* %39)
  %41 = call i64 @IXMLDOMDocument_loadXML(i32* %38, i32 %40, i32* %3)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i8*, i8** @omitxmldecl_doc, align 8
  %50 = call i32 @_bstr_(i8* %49)
  %51 = call i64 @IXMLDOMDocument_loadXML(i32* %48, i32 %50, i32* %3)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = call i64 @IXMLDOMDocument_transformNode(i32* %58, i32* %59, i32* %5)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @_bstr_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @lstrcmpW(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @wine_dbgstr_w(i32 %73)
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @SysFreeString(i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @IXMLDOMDocument_Release(i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @IXMLDOMDocument_Release(i32* %80)
  %82 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i64, i64) #1

declare dso_local i64 @IXMLDOMDocument_transformNode(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
