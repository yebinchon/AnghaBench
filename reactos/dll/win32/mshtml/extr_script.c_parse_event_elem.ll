; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_event_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_parse_event_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"parsing %s failed\0A\00", align 1
@emptyW = common dso_local global i32 0, align 4
@script_endW = common dso_local global i32 0, align 4
@SCRIPTPROC_HOSTMANAGESSOURCE = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_THIS = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_PARENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"GetText failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, %struct.TYPE_9__*, i32**)* @parse_event_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_event_elem(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %107

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = call %struct.TYPE_8__* @get_elem_script_host(i32 %25, %struct.TYPE_9__* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %22
  store i32* null, i32** %4, align 8
  br label %107

36:                                               ; preds = %30
  %37 = call i32 @nsAString_Init(i32* %11, i32* null)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nsIDOMHTMLScriptElement_GetEvent(i32 %40, i32* %11)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @NS_SUCCEEDED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i32 @nsAString_GetData(i32* %11, i32** %15)
  %47 = load i32*, i32** %15, align 8
  %48 = call i32* @heap_strdupW(i32* %47)
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %45, %36
  %50 = call i32 @nsAString_Finish(i32* %11)
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32* null, i32** %4, align 8
  br label %107

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @parse_event_str(i32* %55, i32** %10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @debugstr_w(i32* %59)
  %61 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @heap_free(i32* %62)
  store i32* null, i32** %4, align 8
  br label %107

64:                                               ; preds = %54
  %65 = call i32 @nsAString_Init(i32* %11, i32* null)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @nsIDOMHTMLScriptElement_GetText(i32 %68, i32* %11)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @NS_SUCCEEDED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %64
  %74 = call i32 @nsAString_GetData(i32* %11, i32** %16)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @emptyW, align 4
  %81 = load i32, i32* @script_endW, align 4
  %82 = load i32, i32* @SCRIPTPROC_HOSTMANAGESSOURCE, align 4
  %83 = load i32, i32* @SCRIPTPROC_IMPLICIT_THIS, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SCRIPTPROC_IMPLICIT_PARENTS, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @IActiveScriptParseProcedure2_ParseProcedureText(i32 %77, i32* %78, i32* %79, i32 %80, i32* null, i32* null, i32 %81, i32 0, i32 0, i32 %86, i32** %12)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i64 @FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32* null, i32** %12, align 8
  br label %92

92:                                               ; preds = %91, %73
  br label %96

93:                                               ; preds = %64
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  store i32* null, i32** %12, align 8
  br label %96

96:                                               ; preds = %93, %92
  %97 = call i32 @nsAString_Finish(i32* %11)
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @heap_free(i32* %101)
  store i32* null, i32** %4, align 8
  br label %107

103:                                              ; preds = %96
  %104 = load i32*, i32** %9, align 8
  %105 = load i32**, i32*** %7, align 8
  store i32* %104, i32** %105, align 8
  %106 = load i32*, i32** %12, align 8
  store i32* %106, i32** %4, align 8
  br label %107

107:                                              ; preds = %103, %100, %58, %53, %35, %21
  %108 = load i32*, i32** %4, align 8
  ret i32* %108
}

declare dso_local %struct.TYPE_8__* @get_elem_script_host(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLScriptElement_GetEvent(i32, i32*) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32* @heap_strdupW(i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @parse_event_str(i32*, i32**) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @nsIDOMHTMLScriptElement_GetText(i32, i32*) #1

declare dso_local i32 @IActiveScriptParseProcedure2_ParseProcedureText(i32, i32*, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
