; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_npplugin.c_get_elem_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_npplugin.c_get_elem_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_elem_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_elem_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @nsIDOMHTMLElement_GetOwnerDocument(i32* %8, i32** %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @NS_FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @nsIDOMDocument_GetDefaultView(i32* %15, i32** %4)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @nsIDOMDocument_Release(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @NS_FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %14
  store i32* null, i32** %2, align 8
  br label %35

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_5__* @nswindow_to_window(i32* %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @nsIDOMWindow_Release(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %26, %25, %13
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i32 @nsIDOMHTMLElement_GetOwnerDocument(i32*, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsIDOMDocument_GetDefaultView(i32*, i32**) #1

declare dso_local i32 @nsIDOMDocument_Release(i32*) #1

declare dso_local %struct.TYPE_5__* @nswindow_to_window(i32*) #1

declare dso_local i32 @nsIDOMWindow_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
