; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_get_elem_source_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_get_elem_source_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__**, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@NS_OK = common dso_local global i32 0, align 4
@ELEMENT_NODE = common dso_local global i64 0, align 8
@DOCUMENT_NODE = common dso_local global i64 0, align 8
@DOCUMENT_FRAGMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unexpected parent_type %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"The element is not in parent's child list?\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_elem_source_index(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i32 8, i32* %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @nsIDOMNode_AddRef(i32* %21)
  br label %23

23:                                               ; preds = %2, %59
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @nsIDOMNode_GetParentNode(i32* %24, i32** %7)
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @nsIDOMNode_Release(i32* %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @NS_OK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %61

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @nsIDOMNode_GetNodeType(i32* %37, i64* %9)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @NS_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ELEMENT_NODE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @DOCUMENT_NODE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @DOCUMENT_FRAGMENT_NODE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %55, %51, %47
  br label %61

59:                                               ; preds = %36
  %60 = load i32*, i32** %7, align 8
  store i32* %60, i32** %8, align 8
  br label %23

61:                                               ; preds = %58, %35
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  store i32 -1, i32* %65, align 4
  %66 = load i32, i32* @S_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %142

67:                                               ; preds = %61
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @get_node(i32 %71, i32* %72, i32 %73, %struct.TYPE_14__** %10)
  store i32 %74, i32* %13, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @nsIDOMNode_Release(i32* %75)
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %3, align 4
  br label %142

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call %struct.TYPE_13__** @heap_alloc(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  store %struct.TYPE_13__** %88, %struct.TYPE_13__*** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %91 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %90, align 8
  %92 = icmp ne %struct.TYPE_13__** %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %82
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = call i32 @IHTMLDOMNode_Release(i32* %95)
  %97 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %97, i32* %3, align 4
  br label %142

98:                                               ; preds = %82
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = call i32 @create_all_list(i32 %102, %struct.TYPE_14__* %103, %struct.TYPE_12__* %6)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %121, %98
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %112 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %112, i64 %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = icmp eq %struct.TYPE_13__* %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %124

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %105

124:                                              ; preds = %119, %105
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = call i32 @IHTMLDOMNode_Release(i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %128, align 8
  %130 = call i32 @heap_free(%struct.TYPE_13__** %129)
  %131 = load i32, i32* %11, align 4
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %124
  %139 = load i32, i32* %11, align 4
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* @S_OK, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %135, %93, %80, %64
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nsIDOMNode_AddRef(i32*) #2

declare dso_local i32 @nsIDOMNode_GetParentNode(i32*, i32**) #2

declare dso_local i32 @nsIDOMNode_Release(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @nsIDOMNode_GetNodeType(i32*, i64*) #2

declare dso_local i32 @FIXME(i8*, ...) #2

declare dso_local i32 @get_node(i32, i32*, i32, %struct.TYPE_14__**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local %struct.TYPE_13__** @heap_alloc(i32) #2

declare dso_local i32 @IHTMLDOMNode_Release(i32*) #2

declare dso_local i32 @create_all_list(i32, %struct.TYPE_14__*, %struct.TYPE_12__*) #2

declare dso_local i32 @heap_free(%struct.TYPE_13__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
