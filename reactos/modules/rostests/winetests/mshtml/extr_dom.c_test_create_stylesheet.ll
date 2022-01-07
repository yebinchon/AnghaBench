; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_create_stylesheet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_create_stylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_create_stylesheet.all_types = internal constant [5 x i32] [i32 130, i32 131, i32 128, i32 133, i32 132], align 16
@test_create_stylesheet.all_types2 = internal constant [6 x i32] [i32 130, i32 131, i32 128, i32 129, i32 133, i32 132], align 16
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"createStyleSheet failed: %08x\0A\00", align 1
@IID_IHTMLStyleElement = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not get IHTMLStyleElement iface: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"get_styleSheet failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"stylesheet2 == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"stylesheet != stylesheet2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_create_stylesheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create_stylesheet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @test_doc_all(i32* %9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_create_stylesheet.all_types, i64 0, i64 0), i32 5)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @IHTMLDocument2_createStyleSheet(i32* %11, i32* null, i32 -1, i32** %3)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %8, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @test_doc_all(i32* %19, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @test_create_stylesheet.all_types2, i64 0, i64 0), i32 6)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @get_doc_elem(i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @test_elem_getelembytag(i32* %23, i32 129, i32 1, i32** %7)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @IHTMLElement_Release(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32** %5 to i8**
  %29 = call i64 @IHTMLElement_QueryInterface(i32* %27, i32* @IID_IHTMLStyleElement, i8** %28)
  store i64 %29, i64* %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @IHTMLElement_Release(i32* %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  store i32* null, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IHTMLStyleElement_get_styleSheet(i32* %38, i32** %4)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @iface_cmp(i32* %50, i32* %51)
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @IHTMLStyleSheet_Release(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @IHTMLStyleSheet_Release(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @IHTMLStyleElement_Release(i32* %58)
  ret void
}

declare dso_local i32 @test_doc_all(i32*, i32*, i32) #1

declare dso_local i64 @IHTMLDocument2_createStyleSheet(i32*, i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @get_doc_elem(i32*) #1

declare dso_local i32 @test_elem_getelembytag(i32*, i32, i32, i32**) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i64 @IHTMLElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IHTMLStyleElement_get_styleSheet(i32*, i32**) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLStyleSheet_Release(i32*) #1

declare dso_local i32 @IHTMLStyleElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
