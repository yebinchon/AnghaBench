; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_find_event_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_find_event_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_21__ }
%struct.TYPE_14__ = type { %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__ }

@.str = private unnamed_addr constant [27 x i8] c"GetScriptFor failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Empty for attribute\0A\00", align 1
@documentW = common dso_local global i32 0, align 4
@windowW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_20__*, %struct.TYPE_18__*)* @find_event_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @find_event_target(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %12 = call i32 @nsAString_Init(i32* %8, i32* null)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nsIDOMHTMLScriptElement_GetHtmlFor(i32 %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @NS_FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @nsAString_Finish(i32* %8)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %83

24:                                               ; preds = %2
  %25 = call i32 @nsAString_GetData(i32* %8, i32** %7)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %80

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @documentW, align 4
  %34 = call i32 @strcmpW(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %6, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = call i32 @htmldoc_addref(i32* %41)
  br label %79

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @windowW, align 4
  %46 = call i32 @strcmpW(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = icmp ne %struct.TYPE_15__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %6, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = call i32 @IDispatchEx_AddRef(i32* %60)
  br label %62

62:                                               ; preds = %53, %48
  br label %78

63:                                               ; preds = %43
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @get_doc_elem_by_id(%struct.TYPE_20__* %64, i32* %65, %struct.TYPE_19__** %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @SUCCEEDED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = icmp ne %struct.TYPE_19__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %6, align 8
  br label %77

77:                                               ; preds = %73, %70, %63
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %36
  br label %80

80:                                               ; preds = %79, %29
  %81 = call i32 @nsAString_Finish(i32* %8)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %3, align 8
  br label %83

83:                                               ; preds = %80, %20
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %84
}

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLScriptElement_GetHtmlFor(i32, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @strcmpW(i32*, i32) #1

declare dso_local i32 @htmldoc_addref(i32*) #1

declare dso_local i32 @IDispatchEx_AddRef(i32*) #1

declare dso_local i32 @get_doc_elem_by_id(%struct.TYPE_20__*, i32*, %struct.TYPE_19__**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
