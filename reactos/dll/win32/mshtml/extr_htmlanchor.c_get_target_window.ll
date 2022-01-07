; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_get_target_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlanchor.c_get_target_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@get_target_window._parentW = internal constant [8 x i8] c"_parent\00", align 1
@get_target_window._selfW = internal constant [6 x i8] c"_self\00", align 1
@get_target_window._topW = internal constant [5 x i8] c"_top\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Window has no parent, treat as self\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @get_target_window(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @nsAString_GetData(i32* %14, i32** %10)
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @debugstr_w(i32* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @strcmpiW(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_target_window._selfW, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @IHTMLWindow2_AddRef(i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %4, align 8
  br label %92

32:                                               ; preds = %22
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @strcmpiW(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_target_window._topW, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @get_top_window(%struct.TYPE_10__* %37, %struct.TYPE_10__** %8)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = call i32 @IHTMLWindow2_AddRef(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %4, align 8
  br label %92

44:                                               ; preds = %32
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @strcmpiW(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_target_window._parentW, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = call i32 @IHTMLWindow2_AddRef(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %4, align 8
  br label %92

60:                                               ; preds = %48
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = call i32 @IHTMLWindow2_AddRef(i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %4, align 8
  br label %92

70:                                               ; preds = %44
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = call i32 @get_top_window(%struct.TYPE_10__* %71, %struct.TYPE_10__** %8)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @get_frame_by_name(%struct.TYPE_10__* %73, i32* %74, i32 %75, %struct.TYPE_10__** %9)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80, %70
  %84 = load i32, i32* @TRUE, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = call i32 @IHTMLWindow2_AddRef(i32* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %4, align 8
  br label %92

92:                                               ; preds = %86, %83, %60, %53, %36, %26
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %93
}

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @strcmpiW(i32*, i8*) #1

declare dso_local i32 @IHTMLWindow2_AddRef(i32*) #1

declare dso_local i32 @get_top_window(%struct.TYPE_10__*, %struct.TYPE_10__**) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @get_frame_by_name(%struct.TYPE_10__*, i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
