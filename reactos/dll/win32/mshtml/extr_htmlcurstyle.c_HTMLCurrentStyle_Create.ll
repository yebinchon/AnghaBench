; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlcurstyle.c_HTMLCurrentStyle_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlcurstyle.c_HTMLCurrentStyle_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, %struct.TYPE_18__*, i32, i32*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"NULL nsdoc\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"GetDefaultView failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GetComputedStyle failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"GetComputedStyle returned NULL nsstyle\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLCurrentStyleVtbl = common dso_local global i32 0, align 4
@HTMLCurrentStyle2Vtbl = common dso_local global i32 0, align 4
@HTMLCurrentStyle3Vtbl = common dso_local global i32 0, align 4
@HTMLCurrentStyle4Vtbl = common dso_local global i32 0, align 4
@HTMLCurrentStyle_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLCurrentStyle_Create(%struct.TYPE_18__* %0, %struct.TYPE_17__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nsIDOMHTMLDocument_GetDefaultView(i32 %27, i32** %7)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @NS_FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @E_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %21
  %37 = call i32 @nsAString_Init(i32* %8, i32* null)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @nsIDOMWindow_GetComputedStyle(i32* %38, i32* %42, i32* %8, i32** %6)
  store i32 %43, i32* %10, align 4
  %44 = call i32 @nsAString_Finish(i32* %8)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @nsIDOMWindow_Release(i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @NS_FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @E_FAIL, align 4
  store i32 %53, i32* %3, align 4
  br label %102

54:                                               ; preds = %36
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @E_FAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %102

60:                                               ; preds = %54
  %61 = call %struct.TYPE_19__* @heap_alloc_zero(i32 64)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %9, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = icmp ne %struct.TYPE_19__* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @nsIDOMCSSStyleDeclaration_Release(i32* %65)
  %67 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %67, i32* %3, align 4
  br label %102

68:                                               ; preds = %60
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i32* @HTMLCurrentStyleVtbl, i32** %71, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32* @HTMLCurrentStyle2Vtbl, i32** %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i32* @HTMLCurrentStyle3Vtbl, i32** %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32* @HTMLCurrentStyle4Vtbl, i32** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 4
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_17__* %89 to i32*
  %91 = call i32 @init_dispex(i32* %87, i32* %90, i32* @HTMLCurrentStyle_dispex)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = call i32 @IHTMLElement_AddRef(i32* %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %100, align 8
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %68, %64, %57, %50, %32, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @nsIDOMHTMLDocument_GetDefaultView(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMWindow_GetComputedStyle(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMWindow_Release(i32*) #1

declare dso_local %struct.TYPE_19__* @heap_alloc_zero(i32) #1

declare dso_local i32 @nsIDOMCSSStyleDeclaration_Release(i32*) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

declare dso_local i32 @IHTMLElement_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
