; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_create_nselem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_create_nselem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL nsdoc\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CreateElement failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not get nsIDOMHTMLElement iface: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_nselem(%struct.TYPE_3__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @nsAString_InitDepend(i32* %9, i32* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nsIDOMHTMLDocument_CreateElement(i32 %23, i32* %9, i32** %8)
  store i32 %24, i32* %10, align 4
  %25 = call i32 @nsAString_Finish(i32* %9)
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @NS_FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @E_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %18
  %34 = load i32*, i32** %8, align 8
  %35 = load i32**, i32*** %7, align 8
  %36 = bitcast i32** %35 to i8**
  %37 = call i32 @nsIDOMElement_QueryInterface(i32* %34, i32* @IID_nsIDOMHTMLElement, i8** %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @nsIDOMElement_Release(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @NS_FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @E_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @S_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %43, %29, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLDocument_CreateElement(i32, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIDOMElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
