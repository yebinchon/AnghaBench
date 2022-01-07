; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlscript.c_script_elem_from_nsscript.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlscript.c_script_elem_from_nsscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@IID_nsIDOMNode = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HTMLScriptElementImplVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @script_elem_from_nsscript(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32** %8 to i8**
  %14 = call i64 @nsIDOMHTMLScriptElement_QueryInterface(i32* %12, i32* @IID_nsIDOMNode, i8** %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @NS_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @get_node(i32* %20, i32* %21, i32 %22, %struct.TYPE_4__** %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @nsIDOMNode_Release(i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, @HTMLScriptElementImplVtbl
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = call i32* @impl_from_HTMLDOMNode(%struct.TYPE_4__* %38)
  %40 = load i32**, i32*** %7, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @nsIDOMHTMLScriptElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_node(i32*, i32*, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @impl_from_HTMLDOMNode(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
