; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_bind_event_scripts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_bind_event_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@bind_event_scripts.selectorW = internal constant [14 x i8] c"script[event]\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"QuerySelectorAll failed: %08x\0A\00", align 1
@NS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Item(%d) failed: %08x\0A\00", align 1
@IID_nsIDOMHTMLScriptElement = common dso_local global i32 0, align 4
@IID_HTMLPluginContainer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_event_scripts(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %145

23:                                               ; preds = %1
  %24 = call i32 @nsAString_InitDepend(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @bind_event_scripts.selectorW, i64 0, i64 0))
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nsIDOMHTMLDocument_QuerySelectorAll(i32 %27, i32* %9, i32** %7)
  store i64 %28, i64* %14, align 8
  %29 = call i32 @nsAString_Finish(i32* %9)
  %30 = load i64, i64* %14, align 8
  %31 = call i64 @NS_FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i64, i64* %14, align 8
  %35 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %145

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %145

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @nsIDOMNodeList_GetLength(i32* %41, i64* %11)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @NS_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %139, %40
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %142

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @nsIDOMNodeList_Item(i32* %53, i64 %54, i32** %8)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i64 @NS_FAILED(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %52
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  br label %139

66:                                               ; preds = %59
  %67 = load i32*, i32** %8, align 8
  %68 = bitcast i32** %4 to i8**
  %69 = call i64 @nsIDOMNode_QueryInterface(i32* %67, i32* @IID_nsIDOMHTMLScriptElement, i8** %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @NS_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @nsIDOMNode_Release(i32* %75)
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @script_elem_from_nsscript(%struct.TYPE_24__* %77, i32* %78, %struct.TYPE_22__** %5)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %139

84:                                               ; preds = %66
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = call i32* @parse_event_elem(%struct.TYPE_24__* %85, %struct.TYPE_22__* %86, i32** %13)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %135

90:                                               ; preds = %84
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = call %struct.TYPE_25__* @find_event_target(%struct.TYPE_24__* %91, %struct.TYPE_22__* %92)
  store %struct.TYPE_25__* %93, %struct.TYPE_25__** %6, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = icmp ne %struct.TYPE_25__* %94, null
  br i1 %95, label %96, label %130

96:                                               ; preds = %90
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = bitcast %struct.TYPE_23__** %3 to i8**
  %101 = call i32 @IDispatchEx_QueryInterface(i32* %99, i32* @IID_HTMLPluginContainer, i8** %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @SUCCEEDED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @bind_activex_event(%struct.TYPE_24__* %106, %struct.TYPE_23__* %107, i32* %108, i32* %109)
  br label %117

111:                                              ; preds = %96
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @bind_target_event(%struct.TYPE_24__* %112, %struct.TYPE_25__* %113, i32* %114, i32* %115)
  br label %117

117:                                              ; preds = %111, %105
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = call i32 @IDispatchEx_Release(i32* %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %123 = icmp ne %struct.TYPE_23__* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = call i32 @node_release(i32* %127)
  br label %129

129:                                              ; preds = %124, %117
  br label %130

130:                                              ; preds = %129, %90
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @heap_free(i32* %131)
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @IDispatch_Release(i32* %133)
  br label %135

135:                                              ; preds = %130, %84
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = call i32 @IHTMLScriptElement_Release(i32* %137)
  br label %139

139:                                              ; preds = %135, %83, %62
  %140 = load i64, i64* %12, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %12, align 8
  br label %48

142:                                              ; preds = %48
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @nsIDOMNodeList_Release(i32* %143)
  br label %145

145:                                              ; preds = %142, %39, %33, %22
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #1

declare dso_local i64 @nsIDOMHTMLDocument_QuerySelectorAll(i32, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i64 @nsIDOMNodeList_GetLength(i32*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIDOMNodeList_Item(i32*, i64, i32**) #1

declare dso_local i64 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @script_elem_from_nsscript(%struct.TYPE_24__*, i32*, %struct.TYPE_22__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @parse_event_elem(%struct.TYPE_24__*, %struct.TYPE_22__*, i32**) #1

declare dso_local %struct.TYPE_25__* @find_event_target(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @IDispatchEx_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @bind_activex_event(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @bind_target_event(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @node_release(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @IHTMLScriptElement_Release(i32*) #1

declare dso_local i32 @nsIDOMNodeList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
