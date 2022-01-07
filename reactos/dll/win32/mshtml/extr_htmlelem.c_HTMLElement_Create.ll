; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32 (i32*, i32*, %struct.TYPE_13__**)* }

@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@HTMLElementImplVtbl = common dso_local global i32 0, align 4
@HTMLElement_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s ret %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLElement_Create(i32* %0, i32* %1, i64 %2, %struct.TYPE_13__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32** %10 to i8**
  %19 = call i32 @nsIDOMNode_QueryInterface(i32* %17, i32* @IID_nsIDOMHTMLElement, i8** %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call i64 @NS_FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @E_FAIL, align 4
  store i32 %24, i32* %5, align 4
  br label %82

25:                                               ; preds = %4
  %26 = call i32 @nsAString_Init(i32* %11, i32* null)
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @nsIDOMHTMLElement_GetTagName(i32* %27, i32* %11)
  %29 = call i32 @nsAString_GetData(i32* %11, i32** %12)
  %30 = load i32*, i32** %12, align 8
  %31 = call %struct.TYPE_12__* @get_tag_desc(i32* %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %13, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32 (i32*, i32*, %struct.TYPE_13__**)*, i32 (i32*, i32*, %struct.TYPE_13__**)** %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 %37(i32* %38, i32* %39, %struct.TYPE_13__** %14)
  store i32 %40, i32* %16, align 4
  br label %65

41:                                               ; preds = %25
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @HTMLGenericElement_Create(i32* %45, i32* %46, %struct.TYPE_13__** %14)
  store i32 %47, i32* %16, align 4
  br label %64

48:                                               ; preds = %41
  %49 = call %struct.TYPE_13__* @heap_alloc_zero(i32 8)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %14, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32* @HTMLElementImplVtbl, i32** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @HTMLElement_Init(%struct.TYPE_13__* %56, i32* %57, i32* %58, i32* @HTMLElement_dispex)
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %16, align 4
  br label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %61, %52
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @debugstr_w(i32* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %67, %struct.TYPE_13__* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @nsIDOMHTMLElement_Release(i32* %70)
  %72 = call i32 @nsAString_Finish(i32* %11)
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %5, align 4
  br label %82

78:                                               ; preds = %65
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %80, align 8
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %76, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLElement_GetTagName(i32*, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local %struct.TYPE_12__* @get_tag_desc(i32*) #1

declare dso_local i32 @HTMLGenericElement_Create(i32*, i32*, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__* @heap_alloc_zero(i32) #1

declare dso_local i32 @HTMLElement_Init(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
