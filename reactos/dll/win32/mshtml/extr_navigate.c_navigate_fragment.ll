; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_fragment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@__const.navigate_fragment.selector_formatW = private unnamed_addr constant [11 x i8] c"a[id=\22%s\22]\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SetHash failed: %08x\0A\00", align 1
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @navigate_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navigate_fragment(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [11 x i8], align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = bitcast [11 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.navigate_fragment.selector_formatW, i32 0, i32 0), i64 11, i1 false)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @set_current_uri(%struct.TYPE_12__* %17, i32* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nsIDOMWindow_GetLocation(i32 %22, i32** %6)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @E_FAIL, align 4
  store i32 %31, i32* %3, align 4
  br label %138

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @IUri_GetFragment(i32* %33, i8** %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @nsIDOMLocation_Release(i32* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %138

42:                                               ; preds = %32
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @nsAString_InitDepend(i32* %7, i8* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @nsIDOMLocation_SetHash(i32* %45, i32* %7)
  store i32 %46, i32* %10, align 4
  %47 = call i32 @nsAString_Finish(i32* %7)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @nsIDOMLocation_Release(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @NS_FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @SysStringLen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 1
  %61 = add i64 11, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @heap_alloc(i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %108

66:                                               ; preds = %56
  store i32* null, i32** %13, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @sprintfW(i8* %67, i8* %68, i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @nsAString_InitDepend(i32* %14, i8* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nsIDOMHTMLDocument_QuerySelector(i32 %80, i32* %14, i32** %13)
  store i32 %81, i32* %10, align 4
  %82 = call i32 @nsAString_Finish(i32* %14)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @heap_free(i8* %83)
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @NS_SUCCEEDED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %66
  %89 = load i32*, i32** %13, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32*, i32** %13, align 8
  %93 = bitcast i32** %15 to i8**
  %94 = call i32 @nsIDOMElement_QueryInterface(i32* %92, i32* @IID_nsIDOMHTMLElement, i8** %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @nsIDOMElement_Release(i32* %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @NS_SUCCEEDED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @nsIDOMHTMLElement_ScrollIntoView(i32* %101, i32 %102, i32 1)
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @nsIDOMHTMLElement_Release(i32* %104)
  br label %106

106:                                              ; preds = %100, %91
  br label %107

107:                                              ; preds = %106, %88, %66
  br label %108

108:                                              ; preds = %107, %56
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @SysFreeString(i8* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %108
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = call i32 @IDocObjectService_FireNavigateComplete2(i64 %122, i32* %125, i32 16)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = call i32 @IDocObjectService_FireDocumentComplete(i64 %131, i32* %134, i32 0)
  br label %136

136:                                              ; preds = %117, %108
  %137 = load i32, i32* @S_OK, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %38, %30
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_current_uri(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @nsIDOMWindow_GetLocation(i32, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IUri_GetFragment(i32*, i8**) #2

declare dso_local i32 @nsIDOMLocation_Release(i32*) #2

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #2

declare dso_local i32 @nsIDOMLocation_SetHash(i32*, i32*) #2

declare dso_local i32 @nsAString_Finish(i32*) #2

declare dso_local i64 @NS_FAILED(i32) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @SysStringLen(i8*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i8*) #2

declare dso_local i32 @nsIDOMHTMLDocument_QuerySelector(i32, i32*, i32**) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i64 @NS_SUCCEEDED(i32) #2

declare dso_local i32 @nsIDOMElement_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @nsIDOMElement_Release(i32*) #2

declare dso_local i32 @nsIDOMHTMLElement_ScrollIntoView(i32*, i32, i32) #2

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i32 @IDocObjectService_FireNavigateComplete2(i64, i32*, i32) #2

declare dso_local i32 @IDocObjectService_FireDocumentComplete(i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
