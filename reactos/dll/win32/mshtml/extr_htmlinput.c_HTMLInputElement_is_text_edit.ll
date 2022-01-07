; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlinput.c_HTMLInputElement_is_text_edit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlinput.c_HTMLInputElement_is_text_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@HTMLInputElement_is_text_edit.buttonW = internal constant [7 x i8] c"button\00", align 1
@HTMLInputElement_is_text_edit.hiddenW = internal constant [7 x i8] c"hidden\00", align 1
@HTMLInputElement_is_text_edit.passwordW = internal constant [9 x i8] c"password\00", align 1
@HTMLInputElement_is_text_edit.resetW = internal constant [6 x i8] c"reset\00", align 1
@HTMLInputElement_is_text_edit.submitW = internal constant [7 x i8] c"submit\00", align 1
@HTMLInputElement_is_text_edit.textW = internal constant [5 x i8] c"text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @HTMLInputElement_is_text_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLInputElement_is_text_edit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_3__* @impl_from_HTMLDOMNode(i32* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @nsAString_Init(i32* %5, i32* null)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nsIDOMHTMLInputElement_GetType(i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NS_SUCCEEDED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %1
  %20 = call i32 @nsAString_GetData(i32* %5, i32** %4)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @strcmpW(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @HTMLInputElement_is_text_edit.buttonW, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @strcmpW(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @HTMLInputElement_is_text_edit.hiddenW, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @strcmpW(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @HTMLInputElement_is_text_edit.passwordW, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @strcmpW(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @HTMLInputElement_is_text_edit.resetW, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @strcmpW(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @HTMLInputElement_is_text_edit.submitW, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @strcmpW(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @HTMLInputElement_is_text_edit.textW, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %36, %32, %28, %24, %19
  %46 = phi i1 [ true, %36 ], [ true, %32 ], [ true, %28 ], [ true, %24 ], [ true, %19 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %1
  %49 = call i32 @nsAString_Finish(i32* %5)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_3__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLInputElement_GetType(i32, i32*) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @strcmpW(i32*, i8*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
