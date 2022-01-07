; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_doctype.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_doctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_get_doctype.emailW = internal constant [6 x i8] c"email\00", align 1
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@szEmailXML = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"got name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_doctype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_doctype() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @IXMLDOMDocument_get_doctype(i32* %7, i32** null)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** @E_INVALIDARG, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @IXMLDOMDocument_get_doctype(i32* %15, i32** %1)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** @S_FALSE, align 8
  %19 = icmp eq i32* %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @szEmailXML, align 4
  %30 = call i32 @_bstr_(i32 %29)
  %31 = call i32* @IXMLDOMDocument_loadXML(i32* %28, i32 %30, i64* %3)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** @S_OK, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %36)
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @VARIANT_TRUE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32* @IXMLDOMDocument_get_doctype(i32* %43, i32** %1)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** @S_OK, align 8
  %47 = icmp eq i32* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32* @IXMLDOMDocumentType_get_name(i32* %56, i32* null)
  store i32* %57, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** @E_INVALIDARG, align 8
  %60 = icmp eq i32* %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32* @IXMLDOMDocumentType_get_name(i32* %64, i32* %5)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** @S_OK, align 8
  %68 = icmp eq i32* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @lstrcmpW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_get_doctype.emailW, i64 0, i64 0), i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %5, align 4
  %78 = call i32* @wine_dbgstr_w(i32 %77)
  %79 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @SysFreeString(i32 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32* @IXMLDOMDocumentType_get_nodeName(i32* %82, i32* %5)
  store i32* %83, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** @S_OK, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @lstrcmpW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_get_doctype.emailW, i64 0, i64 0), i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = call i32* @wine_dbgstr_w(i32 %95)
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @SysFreeString(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @IXMLDOMDocumentType_Release(i32* %100)
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @IXMLDOMDocument_Release(i32* %102)
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32* @IXMLDOMDocument_get_doctype(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @IXMLDOMDocument_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i32* @IXMLDOMDocumentType_get_name(i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i8*, i32) #1

declare dso_local i32* @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32* @IXMLDOMDocumentType_get_nodeName(i32*, i32*) #1

declare dso_local i32 @IXMLDOMDocumentType_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
