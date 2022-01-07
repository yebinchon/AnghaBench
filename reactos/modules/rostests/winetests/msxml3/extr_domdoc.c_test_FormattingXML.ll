; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_FormattingXML.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_FormattingXML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_FormattingXML.szLinefeedXML = internal constant [54 x i8] c"<?xml version=\221.0\22?>\0A<Root>\0A\09<Sub val=\22A\22 />\0A</Root>\00", align 16
@test_FormattingXML.szLinefeedRootXML = internal constant [33 x i8] c"<Root>\0D\0A\09<Sub val=\22A\22/>\0D\0A</Root>\00", align 16
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Expected VARIANT_TRUE got VARIANT_FALSE\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"incorrect element xml\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FormattingXML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FormattingXML() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @_bstr_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @test_FormattingXML.szLinefeedXML, i64 0, i64 0))
  %9 = call i64 @IXMLDOMDocument_loadXML(i32* %7, i32 %8, i64* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @VARIANT_TRUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @VARIANT_TRUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @IXMLDOMDocument_get_documentElement(i32* %25, i32** %2)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %24
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @IXMLDOMElement_get_xml(i32* %37, i32* %5)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @_bstr_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_FormattingXML.szLinefeedRootXML, i64 0, i64 0))
  %47 = call i32 @lstrcmpW(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @SysFreeString(i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @IXMLDOMElement_Release(i32* %54)
  br label %56

56:                                               ; preds = %36, %24
  br label %57

57:                                               ; preds = %56, %0
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @IXMLDOMDocument_Release(i32* %58)
  %60 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IXMLDOMDocument_get_documentElement(i32*, i32**) #1

declare dso_local i64 @IXMLDOMElement_get_xml(i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
