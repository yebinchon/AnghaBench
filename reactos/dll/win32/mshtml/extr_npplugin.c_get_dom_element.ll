; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_npplugin.c_get_dom_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_npplugin.c_get_dom_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IID_nsIPluginInstance = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not get nsIPluginInstance interface: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GetDOMElement failed: %08x\0A\00", align 1
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not get nsIDOMHTMLElement iface: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @get_dom_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dom_element(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32** %5 to i8**
  %15 = call i32 @nsISupports_QueryInterface(i32* %13, i32* @IID_nsIPluginInstance, i8** %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @NS_FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32* null, i32** %2, align 8
  br label %47

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @nsIPluginInstance_GetDOMElement(i32* %23, i32** %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @nsIPluginInstance_Release(i32* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @NS_FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32* null, i32** %2, align 8
  br label %47

33:                                               ; preds = %22
  %34 = load i32*, i32** %7, align 8
  %35 = bitcast i32** %6 to i8**
  %36 = call i32 @nsIDOMElement_QueryInterface(i32* %34, i32* @IID_nsIDOMHTMLElement, i8** %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @nsIDOMElement_Release(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @NS_FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32* null, i32** %2, align 8
  br label %47

45:                                               ; preds = %33
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %45, %42, %30, %19
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32 @nsISupports_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIPluginInstance_GetDOMElement(i32*, i32**) #1

declare dso_local i32 @nsIPluginInstance_Release(i32*) #1

declare dso_local i32 @nsIDOMElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
