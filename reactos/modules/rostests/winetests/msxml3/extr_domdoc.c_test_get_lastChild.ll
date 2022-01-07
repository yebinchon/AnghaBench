; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_lastChild.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_get_lastChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_get_lastChild.lcW = internal constant [3 x i8] c"lc\00", align 1
@test_get_lastChild.foW = internal constant [3 x i8] c"fo\00", align 1
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@complete4A = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"loadXML failed\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"expected \22lc\22 node name\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"expected \22fo\22 node name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_lastChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_lastChild() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @complete4A, align 4
  %10 = call i32 @_bstr_(i32 %9)
  %11 = call i64 @IXMLDOMDocument_loadXML(i32* %8, i32 %10, i64* %4)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @VARIANT_TRUE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @IXMLDOMDocument_get_lastChild(i32* %22, i32** %2)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @IXMLDOMNode_get_nodeName(i32* %30, i32* %6)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @memcmp(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_get_lastChild.lcW, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @SysFreeString(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i64 @IXMLDOMNode_get_lastChild(i32* %45, i32** %3)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @IXMLDOMNode_get_nodeName(i32* %53, i32* %6)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @memcmp(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_get_lastChild.foW, i64 0, i64 0), i32 3)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @SysFreeString(i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @IXMLDOMNode_Release(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @IXMLDOMNode_Release(i32* %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @IXMLDOMDocument_Release(i32* %72)
  %74 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i64*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IXMLDOMDocument_get_lastChild(i32*, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeName(i32*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IXMLDOMNode_get_lastChild(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
