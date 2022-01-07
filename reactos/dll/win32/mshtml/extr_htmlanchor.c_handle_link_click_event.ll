; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_handle_link_click_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_handle_link_click_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"CLICK\0A\00", align 1
@IID_nsIDOMMouseEvent = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_link_click_event(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %9, align 8
  %17 = bitcast i32** %11 to i8**
  %18 = call i64 @nsIDOMEvent_QueryInterface(i32* %16, i32* @IID_nsIDOMMouseEvent, i8** %17)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @NS_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @nsIDOMMouseEvent_GetButton(i32* %24, i32* %12)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @NS_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @nsIDOMMouseEvent_Release(i32* %31)
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %47 [
    i32 0, label %34
    i32 1, label %41
  ]

34:                                               ; preds = %5
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @navigate_href(i32* %37, i32* %38, i32* %39)
  store i32 %40, i32* %14, align 4
  br label %51

41:                                               ; preds = %5
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @navigate_href_new_window(i32* %44, i32* %45, i32* null)
  store i32 %46, i32* %14, align 4
  br label %51

47:                                               ; preds = %5
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %47, %41, %34
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @nsAString_Finish(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @nsAString_Finish(i32* %54)
  %56 = load i32, i32* %14, align 4
  ret i32 %56
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @nsIDOMEvent_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIDOMMouseEvent_GetButton(i32*, i32*) #1

declare dso_local i32 @nsIDOMMouseEvent_Release(i32*) #1

declare dso_local i32 @navigate_href(i32*, i32*, i32*) #1

declare dso_local i32 @navigate_href_new_window(i32*, i32*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
