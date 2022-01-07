; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_handle_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IID_nsIDOMKeyEvent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"F1 pressed\0A\00", align 1
@EVENTID_HELP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLElement_handle_event(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_5__* @impl_from_HTMLDOMNode(i32* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %46 [
    i32 129, label %16
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32** %10 to i8**
  %19 = call i32 @nsIDOMEvent_QueryInterface(i32* %17, i32* @IID_nsIDOMKeyEvent, i8** %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @NS_SUCCEEDED(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @nsIDOMKeyEvent_GetKeyCode(i32* %24, i32* %12)
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %42 [
    i32 128, label %27
  ]

27:                                               ; preds = %23
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EVENTID_HELP, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fire_event(i32 %32, i32 %33, i32 %34, i32 %38, i32* null, i32* null)
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %27, %23
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @nsIDOMKeyEvent_Release(i32* %43)
  br label %45

45:                                               ; preds = %42, %16
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* @S_OK, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_5__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @nsIDOMEvent_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIDOMKeyEvent_GetKeyCode(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @fire_event(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nsIDOMKeyEvent_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
