; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_is_elem_tag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_is_elem_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@IID_nsIDOMElement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @is_elem_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_elem_tag(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32** %6 to i8**
  %14 = call i32 @nsIDOMNode_QueryInterface(i32* %12, i32* @IID_nsIDOMElement, i8** %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @NS_FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = call i32 @nsAString_Init(i32* %7, i32* null)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @nsIDOMElement_GetTagName(i32* %22, i32* %7)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @nsIDOMElement_Release(i32* %24)
  %26 = call i32 @nsAString_GetData(i32* %7, i32** %8)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @strcmpiW(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = call i32 @nsAString_Finish(i32* %7)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %20, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMElement_GetTagName(i32*, i32*) #1

declare dso_local i32 @nsIDOMElement_Release(i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
