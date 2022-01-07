; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_selectSingleNode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_selectSingleNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@complete4A = common dso_local global i8* null, align 8
@S_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"loadXML failed\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to load XML string\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nonexistent\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_selectSingleNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_selectSingleNode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i8* @IXMLDOMDocument_selectSingleNode(i32* %8, i32* null, i8** null)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** @E_INVALIDARG, align 8
  %12 = icmp eq i8* %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i8* @IXMLDOMDocument_selectNodes(i32* %16, i32* null, i8** null)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @E_INVALIDARG, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i8*, i8** @complete4A, align 8
  %26 = call i32* @_bstr_(i8* %25)
  %27 = call i8* @IXMLDOMDocument_loadXML(i32* %24, i32* %26, i64* %4)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** @S_OK, align 8
  %30 = icmp eq i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @VARIANT_TRUE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %1, align 8
  %39 = call i8* @IXMLDOMDocument_selectSingleNode(i32* %38, i32* null, i8** null)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** @E_INVALIDARG, align 8
  %42 = icmp eq i8* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i8* @IXMLDOMDocument_selectNodes(i32* %46, i32* null, i8** null)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** @E_INVALIDARG, align 8
  %50 = icmp eq i8* %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i8* @IXMLDOMDocument_selectSingleNode(i32* %54, i32* %55, i8** null)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** @E_INVALIDARG, align 8
  %59 = icmp eq i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i8* @IXMLDOMDocument_selectNodes(i32* %63, i32* %64, i8** null)
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** @E_INVALIDARG, align 8
  %68 = icmp eq i8* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i8* @IXMLDOMDocument_selectSingleNode(i32* %72, i32* %73, i8** %3)
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** @S_OK, align 8
  %77 = icmp eq i8* %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @IXMLDOMNode_Release(i8* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32* @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i8* @IXMLDOMDocument_selectNodes(i32* %83, i32* %84, i8** %2)
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** @S_OK, align 8
  %88 = icmp eq i8* %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 @IXMLDOMNodeList_Release(i8* %92)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %94 = load i32*, i32** %1, align 8
  %95 = call i8* @IXMLDOMDocument_selectNodes(i32* %94, i32* null, i8** %2)
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** @E_INVALIDARG, align 8
  %98 = icmp eq i8* %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %2, align 8
  %103 = icmp eq i8* %102, inttoptr (i64 3735928559 to i8*)
  %104 = zext i1 %103 to i32
  %105 = load i8*, i8** %2, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %107 = load i32*, i32** %1, align 8
  %108 = call i32* @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i8* @IXMLDOMDocument_selectSingleNode(i32* %107, i32* %108, i8** %3)
  store i8* %109, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** @S_FALSE, align 8
  %112 = icmp eq i8* %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %114)
  %116 = load i8*, i8** %3, align 8
  %117 = icmp eq i8* %116, null
  %118 = zext i1 %117 to i32
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %121 = load i32*, i32** %1, align 8
  %122 = call i32* @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %123 = call i8* @IXMLDOMDocument_selectNodes(i32* %121, i32* %122, i8** %2)
  store i8* %123, i8** %5, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** @S_OK, align 8
  %126 = icmp eq i8* %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %128)
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  %130 = load i8*, i8** %2, align 8
  %131 = call i8* @IXMLDOMNodeList_get_length(i8* %130, i8** %6)
  store i8* %131, i8** %5, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** @S_OK, align 8
  %134 = icmp eq i8* %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %136)
  %138 = load i8*, i8** %6, align 8
  %139 = icmp eq i8* %138, null
  %140 = zext i1 %139 to i32
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %141)
  %143 = load i8*, i8** %2, align 8
  %144 = call i32 @IXMLDOMNodeList_Release(i8* %143)
  %145 = load i32*, i32** %1, align 8
  %146 = call i32 @IXMLDOMDocument_Release(i32* %145)
  %147 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i8* @IXMLDOMDocument_selectSingleNode(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @IXMLDOMDocument_selectNodes(i32*, i32*, i8**) #1

declare dso_local i8* @IXMLDOMDocument_loadXML(i32*, i32*, i64*) #1

declare dso_local i32* @_bstr_(i8*) #1

declare dso_local i32 @IXMLDOMNode_Release(i8*) #1

declare dso_local i32 @IXMLDOMNodeList_Release(i8*) #1

declare dso_local i8* @IXMLDOMNodeList_get_length(i8*, i8**) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
