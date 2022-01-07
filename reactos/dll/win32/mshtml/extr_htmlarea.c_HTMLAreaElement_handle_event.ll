; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlarea.c_HTMLAreaElement_handle_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlarea.c_HTMLAreaElement_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@EVENTID_CLICK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get area href: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not get area target: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @HTMLAreaElement_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLAreaElement_handle_event(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EVENTID_CLICK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  %20 = call i32 @nsAString_Init(i32* %11, i32* null)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nsIDOMHTMLAreaElement_GetHref(i32 %23, i32* %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @NS_FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %49

31:                                               ; preds = %19
  %32 = call i32 @nsAString_Init(i32* %12, i32* null)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nsIDOMHTMLAreaElement_GetTarget(i32 %35, i32* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @NS_FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %49

43:                                               ; preds = %31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @handle_link_click_event(%struct.TYPE_5__* %45, i32* %11, i32* %12, i32* %46, i32* %47)
  store i32 %48, i32* %5, align 4
  br label %60

49:                                               ; preds = %40, %28
  %50 = call i32 @nsAString_Finish(i32* %11)
  %51 = call i32 @nsAString_Finish(i32* %12)
  br label %52

52:                                               ; preds = %49, %4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @HTMLElement_handle_event(i32* %55, i32 %56, i32* %57, i32* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %43
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLAreaElement_GetHref(i32, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIDOMHTMLAreaElement_GetTarget(i32, i32*) #1

declare dso_local i32 @handle_link_click_event(%struct.TYPE_5__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @HTMLElement_handle_event(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
