; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_HTMLStyle_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_HTMLStyle_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLStyleVtbl = common dso_local global i32 0, align 4
@HTMLStyle_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLStyle_Create(i32* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @get_style_from_elem(i32* %9, i32** %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = call %struct.TYPE_8__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @nsIDOMCSSStyleDeclaration_Release(i32* %21)
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32* @HTMLStyleVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = call i32 @HTMLStyle2_Init(%struct.TYPE_8__* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i32 @HTMLStyle3_Init(%struct.TYPE_8__* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @nsIDOMCSSStyleDeclaration_AddRef(i32* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_7__* %45 to i32*
  %47 = call i32 @init_dispex(i32* %43, i32* %46, i32* @HTMLStyle_dispex)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %49, align 8
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %24, %20, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @get_style_from_elem(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_8__* @heap_alloc_zero(i32) #1

declare dso_local i32 @nsIDOMCSSStyleDeclaration_Release(i32*) #1

declare dso_local i32 @HTMLStyle2_Init(%struct.TYPE_8__*) #1

declare dso_local i32 @HTMLStyle3_Init(%struct.TYPE_8__*) #1

declare dso_local i32 @nsIDOMCSSStyleDeclaration_AddRef(i32*) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
