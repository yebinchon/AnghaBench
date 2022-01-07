; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_get_doc_elem_by_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_get_doc_elem_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL nsdoc\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"GetElementById failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"getElementsByName failed: %08x\0A\00", align 1
@NS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"CompareDocumentPosition failed: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"CompareDocumentPosition gave: 0x%x\0A\00", align 1
@DOCUMENT_POSITION_PRECEDING = common dso_local global i32 0, align 4
@DOCUMENT_POSITION_CONTAINS = common dso_local global i32 0, align 4
@IID_nsIDOMElement = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_doc_elem_by_id(%struct.TYPE_4__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %21, i32* %4, align 4
  br label %131

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @nsAString_InitDepend(i32* %11, i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nsIDOMHTMLDocument_GetElementById(i32 %27, i32* %11, i32** %9)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = call i32 @nsAString_Finish(i32* %11)
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %4, align 4
  br label %131

37:                                               ; preds = %22
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nsIDOMHTMLDocument_GetElementsByName(i32 %40, i32* %11, i32** %8)
  store i64 %41, i64* %12, align 8
  %42 = call i32 @nsAString_Finish(i32* %11)
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @FAILED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @nsIDOMElement_Release(i32* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* @E_FAIL, align 4
  store i32 %55, i32* %4, align 4
  br label %131

56:                                               ; preds = %37
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @nsIDOMNodeList_Item(i32* %57, i32 0, i32** %10)
  store i64 %58, i64* %12, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @nsIDOMNodeList_Release(i32* %59)
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @NS_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %99

68:                                               ; preds = %56
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i64 @nsIDOMNode_CompareDocumentPosition(i32* %72, i32* %73, i32* %14)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @NS_FAILED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @nsIDOMNode_Release(i32* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @nsIDOMElement_Release(i32* %83)
  %85 = load i32, i32* @E_FAIL, align 4
  store i32 %85, i32* %4, align 4
  br label %131

86:                                               ; preds = %71
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @DOCUMENT_POSITION_PRECEDING, align 4
  %91 = load i32, i32* @DOCUMENT_POSITION_CONTAINS, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @nsIDOMElement_Release(i32* %96)
  store i32* null, i32** %9, align 8
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %68, %56
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = bitcast i32** %9 to i8**
  %108 = call i64 @nsIDOMNode_QueryInterface(i32* %106, i32* @IID_nsIDOMElement, i8** %107)
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @NS_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %105, %102
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @nsIDOMNode_Release(i32* %115)
  br label %117

117:                                              ; preds = %114, %99
  %118 = load i32*, i32** %9, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32**, i32*** %7, align 8
  store i32* null, i32** %121, align 8
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %4, align 4
  br label %131

123:                                              ; preds = %117
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32**, i32*** %7, align 8
  %127 = call i32 @get_elem(%struct.TYPE_4__* %124, i32* %125, i32** %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @nsIDOMElement_Release(i32* %128)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %120, %78, %54, %32, %19
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i32*) #1

declare dso_local i64 @nsIDOMHTMLDocument_GetElementById(i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @nsIDOMHTMLDocument_GetElementsByName(i32, i32*, i32**) #1

declare dso_local i32 @nsIDOMElement_Release(i32*) #1

declare dso_local i64 @nsIDOMNodeList_Item(i32*, i32, i32**) #1

declare dso_local i32 @nsIDOMNodeList_Release(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIDOMNode_CompareDocumentPosition(i32*, i32*, i32*) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @get_elem(%struct.TYPE_4__*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
