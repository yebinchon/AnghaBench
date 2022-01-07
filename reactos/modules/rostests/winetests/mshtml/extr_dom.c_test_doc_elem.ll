; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_doc_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_doc_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLDocument3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"QueryInterface(IID_IHTMLDocument3) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"toString failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"toString returned %s, expected [object]\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"get_documentElement failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"doc_node != owner_doc\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"owner_doc = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_doc_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_doc_elem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32** %6 to i8**
  %11 = call i64 @IHTMLDocument2_QueryInterface(i32* %9, i32* @IID_IHTMLDocument3, i8** %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @IHTMLDocument2_toString(i32* %18, i32* %8)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @strcmp_wa(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @wine_dbgstr_w(i32 %31)
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @SysFreeString(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @IHTMLDocument3_get_documentElement(i32* %36, i32** %5)
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @IHTMLDocument3_Release(i32* %38)
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @test_node_name(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @test_elem_tag(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = call i32* @get_doc_node(i32* %50)
  store i32* %51, i32** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32* @get_owner_doc(i32* %52)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @iface_cmp(i32* %54, i32* %55)
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @IHTMLDocument2_Release(i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @get_owner_doc(i32* %60)
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ne i32* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @IHTMLDocument2_Release(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @test_elem_client_rect(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @IHTMLElement_Release(i32* %72)
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLDocument2_toString(i32*, i32*) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i32* @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IHTMLDocument3_get_documentElement(i32*, i32**) #1

declare dso_local i32 @IHTMLDocument3_Release(i32*) #1

declare dso_local i32 @test_node_name(i32*, i8*) #1

declare dso_local i32 @test_elem_tag(i32*, i8*) #1

declare dso_local i32* @get_doc_node(i32*) #1

declare dso_local i32* @get_owner_doc(i32*) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

declare dso_local i32 @test_elem_client_rect(i32*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
