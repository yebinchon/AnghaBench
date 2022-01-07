; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_preserve_charref.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_preserve_charref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_preserve_charref.b1_p = internal constant [13 x i8] c" Text A end \00", align 1
@test_preserve_charref.b1_i = internal constant [11 x i8] c"Text A end\00", align 1
@test_preserve_charref.b2_p = internal constant [6 x i8] c"AB C \00", align 1
@test_preserve_charref.b2_i = internal constant [5 x i8] c"AB C\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@charrefsxml = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"0x%x, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_preserve_charref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_preserve_charref(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @IXMLDOMDocument2_put_preserveWhiteSpace(i32* %12, i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %10, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @charrefsxml, align 4
  %23 = call i32 @_bstr_(i32 %22)
  %24 = call i64 @IXMLDOMDocument2_loadXML(i32* %21, i32 %23, i64* %9)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %10, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @IXMLDOMDocument2_get_documentElement(i32* %31, i32** %6)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @IXMLDOMElement_get_childNodes(i32* %39, i32** %5)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %10, align 8
  %46 = call i32 (i32, i8*, i64, ...) @ok(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @IXMLDOMElement_Release(i32* %47)
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @VARIANT_TRUE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_preserve_charref.b1_p, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_preserve_charref.b1_i, i64 0, i64 0)
  store i8* %53, i8** %8, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @IXMLDOMNodeList_get_item(i32* %54, i32 0, i32** %7)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %10, align 8
  %61 = call i32 (i32, i8*, i64, ...) @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @IXMLDOMNode_get_text(i32* %62, i32* %11)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %10, align 8
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @lstrcmpW(i32 %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @wine_dbgstr_w(i32 %77)
  %79 = call i32 (i32, i8*, i64, ...) @ok(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @SysFreeString(i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @IXMLDOMNode_Release(i32* %82)
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @VARIANT_TRUE, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_preserve_charref.b2_p, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_preserve_charref.b2_i, i64 0, i64 0)
  store i8* %88, i8** %8, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @IXMLDOMNodeList_get_item(i32* %89, i32 1, i32** %7)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %10, align 8
  %96 = call i32 (i32, i8*, i64, ...) @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i64 @IXMLDOMNode_get_text(i32* %97, i32* %11)
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %10, align 8
  %104 = call i32 (i32, i8*, i64, ...) @ok(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @lstrcmpW(i32 %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %4, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @wine_dbgstr_w(i32 %112)
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %111, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @SysFreeString(i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @IXMLDOMNode_Release(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @IXMLDOMNodeList_Release(i32* %119)
  ret void
}

declare dso_local i64 @IXMLDOMDocument2_put_preserveWhiteSpace(i32*, i64) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IXMLDOMDocument2_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i64 @IXMLDOMDocument2_get_documentElement(i32*, i32**) #1

declare dso_local i64 @IXMLDOMElement_get_childNodes(i32*, i32**) #1

declare dso_local i32 @IXMLDOMElement_Release(i32*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i32, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i32, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
