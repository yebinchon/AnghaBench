; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_tagName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_tagName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"element\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"s:element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_tagName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_tagName() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @_bstr_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @IXMLDOMDocument_createElement(i32* %7, i32 %8, i32** %2)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IXMLDOMElement_get_tagName(i32* %16, i32** null)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @E_INVALIDARG, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  store i32* null, i32** %5, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @IXMLDOMElement_get_tagName(i32* %24, i32** %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @_bstr_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @lstrcmpW(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @wine_dbgstr_w(i32* %38)
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @SysFreeString(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @_bstr_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i64 @IXMLDOMDocument_createElement(i32* %43, i32 %44, i32** %3)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  store i32* null, i32** %5, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @IXMLDOMElement_get_tagName(i32* %52, i32** %5)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @_bstr_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @lstrcmpW(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @wine_dbgstr_w(i32* %66)
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @SysFreeString(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @IXMLDOMElement_Release(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @IXMLDOMElement_Release(i32* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IXMLDOMDocument_Release(i32* %75)
  %77 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_createElement(i32*, i32, i32**) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXMLDOMElement_get_tagName(i32*, i32**) #1

declare dso_local i32 @lstrcmpW(i32*, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
