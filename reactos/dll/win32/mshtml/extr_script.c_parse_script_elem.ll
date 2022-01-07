; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_script_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_script_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"deferring event %s script evaluation\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GetEvent failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"GetSrc failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@READYSTATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @parse_script_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_script_elem(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @nsAString_Init(i32* %6, i32* null)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nsIDOMHTMLScriptElement_GetEvent(i32 %13, i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @NS_SUCCEEDED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = call i32 @nsAString_GetData(i32* %6, i64** %9)
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @debugstr_w(i64* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @nsAString_Finish(i32* %6)
  br label %68

28:                                               ; preds = %18
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = call i32 @nsAString_Finish(i32* %6)
  %34 = call i32 @nsAString_Init(i32* %5, i32* null)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nsIDOMHTMLScriptElement_GetSrc(i32 %37, i32* %5)
  store i32 %38, i32* %8, align 4
  %39 = call i32 @nsAString_GetData(i32* %5, i64** %7)
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @NS_FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %63

46:                                               ; preds = %32
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @TRUE, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = call i32 @parse_extern_script(i32* %54, %struct.TYPE_6__* %55, i64* %56)
  br label %62

58:                                               ; preds = %46
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = call i32 @parse_inline_script(i32* %59, %struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %43
  %64 = call i32 @nsAString_Finish(i32* %5)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = load i32, i32* @READYSTATE_COMPLETE, align 4
  %67 = call i32 @set_script_elem_readystate(%struct.TYPE_6__* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %23
  ret void
}

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLScriptElement_GetEvent(i32, i32*) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsAString_GetData(i32*, i64**) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIDOMHTMLScriptElement_GetSrc(i32, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @parse_extern_script(i32*, %struct.TYPE_6__*, i64*) #1

declare dso_local i32 @parse_inline_script(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @set_script_elem_readystate(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
