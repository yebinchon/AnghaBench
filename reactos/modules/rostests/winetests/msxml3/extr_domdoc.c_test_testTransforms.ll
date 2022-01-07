; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_testTransforms.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_testTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@szTransformXML = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@szTransformSSXML = common dso_local global i32 0, align 4
@IID_IXMLDOMNode = common dso_local global i32 0, align 4
@szTransformOutput = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"got output %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_testTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_testTransforms() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %7, i32** %1, align 8
  %8 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @szTransformXML, align 4
  %11 = call i32 @_bstr_(i32 %10)
  %12 = call i64 @IXMLDOMDocument_loadXML(i32* %9, i32 %11, i32* %4)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @szTransformSSXML, align 4
  %21 = call i32 @_bstr_(i32 %20)
  %22 = call i64 @IXMLDOMDocument_loadXML(i32* %19, i32 %21, i32* %4)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = bitcast i32** %3 to i8**
  %31 = call i64 @IXMLDOMDocument_QueryInterface(i32* %29, i32* @IID_IXMLDOMNode, i8** %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %0
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @IXMLDOMDocument_transformNode(i32* %42, i32* %43, i32* %6)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @szTransformOutput, align 4
  %57 = call i32 @_bstr_(i32 %56)
  %58 = call i32 @compareIgnoreReturns(i32 %55, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @wine_dbgstr_w(i32 %59)
  %61 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SysFreeString(i32 %62)
  br label %64

64:                                               ; preds = %54, %41
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @IXMLDOMNode_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %0
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @IXMLDOMDocument_Release(i32* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @IXMLDOMDocument_Release(i32* %70)
  %72 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_loadXML(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXMLDOMDocument_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IXMLDOMDocument_transformNode(i32*, i32*, i32*) #1

declare dso_local i32 @compareIgnoreReturns(i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
