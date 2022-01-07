; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_set_font_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_set_font_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL nsdoc\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"range_cnt %d not supprted\0A\00", align 1
@fontW = common dso_local global i32 0, align 4
@sizeW = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @set_font_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_font_size(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32* @get_ns_selection(%struct.TYPE_6__* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %86

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @nsISelection_GetRangeCount(i32* %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @nsISelection_Release(i32* %37)
  br label %86

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* @fontW, align 4
  %45 = call i32 @create_nselem(%struct.TYPE_7__* %43, i32 %44, i32** %7)
  %46 = load i32, i32* @sizeW, align 4
  %47 = call i32 @nsAString_InitDepend(i32* %10, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @nsAString_InitDepend(i32* %11, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @nsIDOMHTMLElement_SetAttribute(i32* %50, i32* %10, i32* %11)
  %52 = call i32 @nsAString_Finish(i32* %11)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @nsISelection_GetRangeAt(i32* %53, i32 0, i32** %8)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @nsISelection_GetIsCollapsed(i32* %55, i64* %6)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @nsISelection_RemoveAllRanges(i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @nsIDOMRange_SurroundContents(i32* %59, i32* %60)
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %40
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @nsISelection_Collapse(i32* %65, i32* %66, i32 0)
  br label %75

68:                                               ; preds = %40
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @fontW, align 4
  %71 = call i32 @remove_child_attr(i32* %69, i32 %70, i32* %10)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @nsISelection_SelectAllChildren(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @nsISelection_Release(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @nsIDOMRange_Release(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @nsIDOMHTMLElement_Release(i32* %80)
  %82 = call i32 @nsAString_Finish(i32* %10)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = load i32, i32* @VARIANT_TRUE, align 4
  %85 = call i32 @set_dirty(%struct.TYPE_6__* %83, i32 %84)
  br label %86

86:                                               ; preds = %75, %36, %25, %18
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32* @get_ns_selection(%struct.TYPE_6__*) #1

declare dso_local i32 @nsISelection_GetRangeCount(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @nsISelection_Release(i32*) #1

declare dso_local i32 @create_nselem(%struct.TYPE_7__*, i32, i32**) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i32) #1

declare dso_local i32 @nsIDOMHTMLElement_SetAttribute(i32*, i32*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsISelection_GetRangeAt(i32*, i32, i32**) #1

declare dso_local i32 @nsISelection_GetIsCollapsed(i32*, i64*) #1

declare dso_local i32 @nsISelection_RemoveAllRanges(i32*) #1

declare dso_local i32 @nsIDOMRange_SurroundContents(i32*, i32*) #1

declare dso_local i32 @nsISelection_Collapse(i32*, i32*, i32) #1

declare dso_local i32 @remove_child_attr(i32*, i32, i32*) #1

declare dso_local i32 @nsISelection_SelectAllChildren(i32*, i32*) #1

declare dso_local i32 @nsIDOMRange_Release(i32*) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i32 @set_dirty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
