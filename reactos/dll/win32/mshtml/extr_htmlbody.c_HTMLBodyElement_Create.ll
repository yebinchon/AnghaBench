; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_HTMLBodyElement_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_HTMLBodyElement_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLBodyElementVtbl = common dso_local global i32 0, align 4
@HTMLBodyElementImplVtbl = common dso_local global i32 0, align 4
@IID_nsIDOMHTMLBodyElement = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not get nsDOMHTMLBodyElement: %08x\0A\00", align 1
@HTMLBodyElement_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLBodyElement_Create(i32* %0, i32* %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %10 = call %struct.TYPE_12__* @heap_alloc_zero(i32 24)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32* @HTMLBodyElementVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32* @HTMLBodyElementImplVtbl, i32** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8**
  %28 = call i32 @nsIDOMHTMLElement_QueryInterface(i32* %24, i32* @IID_nsIDOMHTMLBodyElement, i8** %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @NS_FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = call i32 @heap_free(%struct.TYPE_12__* %35)
  %37 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %15
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @HTMLTextContainer_Init(%struct.TYPE_13__* %40, i32* %41, i32* %42, i32* @HTMLBodyElement_dispex)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %47, align 8
  %48 = load i32, i32* @S_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %32, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_12__* @heap_alloc_zero(i32) #1

declare dso_local i32 @nsIDOMHTMLElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_12__*) #1

declare dso_local i32 @HTMLTextContainer_Init(%struct.TYPE_13__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
