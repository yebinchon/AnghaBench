; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_callfunction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_callfunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i8**, i32, i64 }

@JS_COBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"callee\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@BOT = common dso_local global i64 0, align 8
@TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32, %struct.TYPE_23__*, i32*)* @jsR_callfunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsR_callfunction(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_23__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = load i32, i32* @JS_COBJECT, align 4
  %14 = call i32 @jsV_newobject(%struct.TYPE_22__* %12, i32 %13, i32* null)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @jsR_newenvironment(%struct.TYPE_22__* %11, i32 %14, i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @jsR_savescope(%struct.TYPE_22__* %17, i32* %18)
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = call i32 @js_newarguments(%struct.TYPE_22__* %25)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = call i32 @js_currentfunction(%struct.TYPE_22__* %32)
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = load i32, i32* @JS_DONTENUM, align 4
  %36 = call i32 @js_defproperty(%struct.TYPE_22__* %34, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @js_pushnumber(%struct.TYPE_22__* %38, i32 %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = load i32, i32* @JS_DONTENUM, align 4
  %43 = call i32 @js_defproperty(%struct.TYPE_22__* %41, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %56, %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @js_copy(%struct.TYPE_22__* %49, i32 %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @js_setindex(%struct.TYPE_22__* %53, i32 -2, i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = call i32 @js_initvar(%struct.TYPE_22__* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = call i32 @js_pop(%struct.TYPE_22__* %62, i32 1)
  br label %64

64:                                               ; preds = %59, %4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  br i1 %76, label %77, label %92

77:                                               ; preds = %75
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @js_initvar(%struct.TYPE_22__* %78, i8* %85, i32 %87)
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %65

92:                                               ; preds = %75
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @js_pop(%struct.TYPE_22__* %93, i32 %94)
  br label %96

96:                                               ; preds = %116, %92
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = call i32 @js_pushundefined(%struct.TYPE_22__* %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @js_initvar(%struct.TYPE_22__* %105, i8* %112, i32 -1)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = call i32 @js_pop(%struct.TYPE_22__* %114, i32 1)
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %96

119:                                              ; preds = %96
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = call i32 @jsR_run(%struct.TYPE_22__* %120, %struct.TYPE_23__* %121)
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = call i32* @stackidx(%struct.TYPE_22__* %123, i32 -1)
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i64, i64* @BOT, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* @BOT, align 8
  store i64 %127, i64* @TOP, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @js_pushvalue(%struct.TYPE_22__* %128, i32 %129)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = call i32 @jsR_restorescope(%struct.TYPE_22__* %131)
  ret void
}

declare dso_local i32* @jsR_newenvironment(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @jsV_newobject(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @jsR_savescope(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @js_newarguments(%struct.TYPE_22__*) #1

declare dso_local i32 @js_currentfunction(%struct.TYPE_22__*) #1

declare dso_local i32 @js_defproperty(%struct.TYPE_22__*, i32, i8*, i32) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @js_copy(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @js_setindex(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @js_initvar(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @js_pop(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @js_pushundefined(%struct.TYPE_22__*) #1

declare dso_local i32 @jsR_run(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32* @stackidx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @js_pushvalue(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @jsR_restorescope(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
